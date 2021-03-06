import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/components/dropdown.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/notification.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';

class BloodGlucoseScreen extends StatefulWidget {
  BloodGlucoseScreen({Key key}) : super(key: key);

  @override
  _BloodGlucoseState createState() => _BloodGlucoseState();
}

class _BloodGlucoseState extends State<BloodGlucoseScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/ic_launcher");
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Alerta Glicemia'),
        content: new Text('$payload'),
      ),
    );
  }

  @override
  TextEditingController bloodglucoseController = TextEditingController();
  TextEditingController dropdownValue = TextEditingController();
  var notificacao, textoNoitificacao;
  final _formKey = GlobalKey<FormState>();

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd/MM/yyyy');
  final String dataFormatter = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Adicionar Glicemia"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlertsScreen(),
                  ));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Text(
                  "Data: " + dataFormatter + "\n",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Dropdown(
                  options: [
                    'Selecione',
                    'Caf?? da Manh??',
                    'Depois do Caf?? da Manh??',
                    'Almo??o',
                    'Caf?? da Tarde',
                    'Jantar',
                    'Depois do Jantar'
                  ],
                  text: "Selecione o Hor??rio",
                  controller: dropdownValue,
                  validator: (value) {
                    if (value == 'Selecione') {
                      return 'Informe';
                    }
                    return null;
                  },
                ),
                Column(
                  children: [
                    Input(
                      controller: bloodglucoseController,
                      text: 'Glicemia Aferida (mg/dL)',
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Informe';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
                Button(
                  width: MediaQuery.of(context).size.width,
                  heigth: 50,
                  widget: Center(
                      child: Text(
                    'Salvar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  )),
                  onPress: () {
                    if (_formKey.currentState.validate()) {
                      MeasuredBloodglucoseModel mb =
                          new MeasuredBloodglucoseModel(
                              glicemia: bloodglucoseController.text,
                              horario: dropdownValue.text,
                              dataAtual: DateTime.now(),
                              data: dataFormatter);
                      FirestoreService().saveBloodglucose(mb);

                      if (int.parse(bloodglucoseController.text) <= 70) {
                        showNotification(
                            'Alerta Glicemia',
                            'Cuidado, glicemia com n??veis baixos! O que fazer? Clique para saber mais!',
                            'Cuidado, calorias em n??veis baixos! \nO que fazer? \n\nA hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.');
                        saveNotification(
                            'Alerta Glicemia- Glicemia em n??veis baixos!',
                            'Glicemia em n??veis baixos! O que fazer? A hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.');
                      } else if (int.parse(bloodglucoseController.text) >=
                              115 &&
                          dropdownValue.text == "Caf?? da Manh??") {
                        showNotification(
                            'Alerta Glicemia',
                            'Cuidado, glicemia com n??veis altos! O que fazer? Clique para saber mais!',
                            'Cuidado, glicemia com n??veis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                        saveNotification(
                            'Alerta Glicemia- Glicemia com n??veis altos!',
                            'Cuidado! Glicemia com n??veis altos! O que fazer? Insira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                      } else if (int.parse(bloodglucoseController.text) >=
                              160 &&
                          (dropdownValue.text == "Depois do Caf?? da Manh??" ||
                              dropdownValue.text == "Depois do Jantar")) {
                        showNotification(
                            'Alerta Glicemia',
                            'Cuidado, glicemia com n??veis altos! O que fazer? Clique para saber mais!',
                            'Cuidado, glicemia com n??veis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                        saveNotification(
                            'Alerta Glicemia- Glicemia com n??veis altos!',
                            'Cuidado! Glicemia com n??veis altos! O que fazer? Insira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                      } else if (int.parse(bloodglucoseController.text) >=
                              126 &&
                          (dropdownValue.text == "Almo??o" ||
                              dropdownValue.text == "Caf?? da Tarde" ||
                              dropdownValue.text == "Jantar")) {
                        showNotification(
                            'Alerta Glicemia',
                            'Cuidado, glicemia com n??veis altos! O que fazer? Clique para saber mais!',
                            'Cuidado, glicemia com n??veis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                        saveNotification(
                            'Alerta Glicemia- Glicemia com n??veis altos!',
                            'Cuidado! Glicemia com n??veis altos! O que fazer? Insira o medicamento recomendado pelo seu m??dico. Al??m disso, reduza o consumo de alimentos ricos em a????car e massas, e fa??a atividades f??sicas regularmente.');
                      }
                      showAlertDialog(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Menu(),
    );
  }

  showNotification(String titulo, String notificacao, String texto) async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'channel DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var platform = new NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(0, titulo, notificacao, platform,
        payload: texto);
  }

  saveNotification(String notificacaoTitle, String textoNotific) {
    NotificationModel notificationModel = new NotificationModel(
        notificacao: notificacaoTitle,
        textoNoitificacao: textoNotific,
        horario: dropdownValue.text,
        dataAtual: DateTime.now().toString(),
        dataFormatada: dataFormatter);
    FirestoreService().saveNotification(notificationModel);
  }
}

void showAlertDialog(BuildContext context) {
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      });
  AlertDialog alerta = AlertDialog(
    title: Text("Glicemia salva com sucesso!"),
    content: SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            color: Color(0xFFFFD185),
            child: Padding(
              padding: EdgeInsets.only(top: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.warning, color: Colors.black),
                  Text(
                    "\n ATEN????O! \n",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Depois de uma refei????o, o n??vel normal ?? entre 70 e 140 mg/dL. \n '
                    'Depois de comer, os pacientes com diabetes n??o controlada apresentam valores superiores. \n'
                    'Isto ocorre porque o horm??nio respons??vel por retirar a glicose do sangue para dentro das c??lulas - \n'
                    'insulina - existe em pouca quantidade, ou porque existe diminui????o da sensibilidade ?? insulina normal. \n'
                    'Uma glicose 150 mg/dL j?? n??o ?? normal, por exemplo. \n '
                    'Este valor varia, n??o s?? de pessoa para pessoa, como com o alimentos inclu??dos na refei????o e outras variantes\n'
                    'como o estresse emocional ou estado de doen??a. \n',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
    actions: [
      okButton,
    ],
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
