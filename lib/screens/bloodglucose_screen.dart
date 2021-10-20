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
                      showNotificationNiveisNormais();
                      notificacao =
                          'Alerta Glicemia- Glicemia em níveis baixos!';
                      textoNoitificacao =
                          'Glicemia em níveis baixos! O que fazer? A hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.';
                      NotificationModel notificationModel =
                          new NotificationModel(
                              notificacao: notificacao,
                              textoNoitificacao: textoNoitificacao,
                              horario: dropdownValue.text,
                              dataAtual: DateTime.now().toString(),
                              dataFormatada: dataFormatter);
                      FirestoreService().saveNotification(notificationModel);
                    } else if (int.parse(bloodglucoseController.text) >= 100) {
                      showNotificationNiveisAlterados();
                      notificacao =
                          'Alerta Glicemia- Glicemia com níveis altos!';
                      textoNoitificacao =
                          'Cuidado! Glicemia com níveis altos! O que fazer? Insira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.';
                      NotificationModel notificationModel =
                          new NotificationModel(
                              notificacao: notificacao,
                              textoNoitificacao: textoNoitificacao,
                              horario: dropdownValue.text,
                              dataAtual: DateTime.now().toString(),
                              dataFormatada: dataFormatter);
                      FirestoreService().saveNotification(notificationModel);
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

  showNotificationNiveisNormais() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'channel DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var platform = new NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(
        0,
        'Alerta Glicemia',
        'Cuidado, glicemia em níveis baixos! O que fazer? Clique para saber mais!',
        platform,
        payload:
            'Cuidado, calorias em níveis baixos! \nO que fazer? \n\nA hipoglicemia deve ser tratada rapidamente, por isso se estiver apresentando sintomas mais leves, como tontura, tome um suco de caixinha ou ingira algo doce imediatamente.');
  }

  showNotificationNiveisAlterados() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'channel DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var platform = new NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(
        0,
        'Alerta Glicemia',
        'Cuidado, glicemia com níveis altos! O que fazer? Clique para saber mais!',
        platform,
        payload:
            'Cuidado, glicemia com níveis altos!\nO que fazer? \n\nInsira o medicamento recomendado pelo seu médico. Além disso, reduza o consumo de alimentos ricos em açúcar e massas, e faça atividades físicas regularmente.');
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
    content: Text("Glicemia salva com sucesso!"),
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
