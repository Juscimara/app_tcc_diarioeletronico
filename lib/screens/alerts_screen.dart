import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:onesignal_flutter/onesignal_flutter.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({Key key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<AlertsScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    OneSignal.shared.setAppId("eee0638c-4480-41b6-bd65-c995830fd96c");

    OneSignal.shared.setNotificationWillShowInForegroundHandler(
        (OSNotificationReceivedEvent event) {
      // Será chamado sempre que uma notificação for recebida em primeiro plano
      // Notificação de exibição, passe parametros nulos por não exibir a notificação
      event.complete(event.notification);
    });

    OneSignal.shared
        .setNotificationOpenedHandler((OSNotificationOpenedResult result) {
      // Será chamado sempre que uma notificação for aberta/botão pressionado.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Alertas"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [],
            ),
          ),
        ), 
      ),
      drawer: Menu(),
    );
  }
}
