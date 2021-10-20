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
      body: Container(
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
                  'Café da Manhã',
                  'Depois do Café da Manhã',
                  'Almoço',
                  'Café da Tarde',
                  'Jantar',
                  'Depois do Jantar'
                ],
                text: "Selecione o Horário",
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
                    keyboardType: TextInputType.text,
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
                          'Cuidado, glicemia com níveis baixos! O que fazer? Clique para saber mais!',
                          'Cuidado, calorias em níveis baixos! \nO que fazer? \n\nA hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.');
                      saveNotification(
                          'Alerta Glicemia- Glicemia em níveis baixos!',
                          'Glicemia em níveis baixos! O que fazer? A hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.');
                    } else if (int.parse(bloodglucoseController.text) >= 115 &&
                        dropdownValue.text == "Café da Manhã") {
                      showNotification(
                          'Alerta Glicemia',
                          'Cuidado, glicemia com níveis altos! O que fazer? Clique para saber mais!',
                          'Cuidado, glicemia com níveis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                      saveNotification(
                          'Alerta Glicemia- Glicemia com níveis altos!',
                          'Cuidado! Glicemia com níveis altos! O que fazer? Insira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                    } else if (int.parse(bloodglucoseController.text) >= 160 &&
                        (dropdownValue.text == "Depois do Café da Manhã" ||
                            dropdownValue.text == "Depois do Jantar")) {
                      showNotification(
                          'Alerta Glicemia',
                          'Cuidado, glicemia com níveis altos! O que fazer? Clique para saber mais!',
                          'Cuidado, glicemia com níveis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                      saveNotification(
                          'Alerta Glicemia- Glicemia com níveis altos!',
                          'Cuidado! Glicemia com níveis altos! O que fazer? Insira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                    } else if (int.parse(bloodglucoseController.text) >= 126 &&
                        (dropdownValue.text == "Almoço" ||
                            dropdownValue.text == "Café da Tarde" ||
                            dropdownValue.text == "Jantar")) {
                      showNotification(
                          'Alerta Glicemia',
                          'Cuidado, glicemia com níveis altos! O que fazer? Clique para saber mais!',
                          'Cuidado, glicemia com níveis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                      saveNotification(
                          'Alerta Glicemia- Glicemia com níveis altos!',
                          'Cuidado! Glicemia com níveis altos! O que fazer? Insira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
                    }
                    showAlertDialog(context);
                  }
                },
              ),
            ],
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
    content: Column(mainAxisSize: MainAxisSize.min, children: [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        color: Color(0xFFFFD185),
        child: Column(mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.warning, color: Colors.black),
            Text(
              "\n ATENÇÃO! \n",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Depois de uma refeição, o nível normal é entre 70 e 140 mg/dL. \n '
              'Depois de comer, os pacientes com diabetes não controlada apresentam valores superiores. \n'
              'Isto ocorre porque o hormônio responsável por retirar a glicose do sangue para dentro das células - \n'
              'insulina - existe em pouca quantidade, ou porque existe diminuição da sensibilidade à insulina normal. \n'
              'Uma glicose 150 mg/dL já não é normal, por exemplo. \n '
              'Este valor varia, não só de pessoa para pessoa, como com o alimentos incluídos na refeição e outras variantes\n'
              'como o estresse emocional ou estado de doença. \n',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ]),
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
