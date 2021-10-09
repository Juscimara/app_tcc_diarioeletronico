import 'package:app_tcc_diarioeletronico/models/notification.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({Key key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<AlertsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Histórico de Alertas"),
      ),
      body: SafeArea(
        child: StreamBuilder<List<NotificationModel>>(
            stream: FirestoreService().getNotifications(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<NotificationModel> notifications = snapshot.data ?? [];
                return ListView.builder(
                  itemCount: notifications.length,
                  itemBuilder: (context, index) => Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        color: Color(0xFFFFD185),
                        child: Column(
                          children: [
                            Icon(Icons.notifications),
                                Text(
                                  '\n Título: ' +
                                      notifications[index].notificacao +
                                      '\n' +
                                      'Data: ' +
                                      notifications[index].dataFormatada +
                                      ' Horário: ' +
                                      notifications[index].horario +
                                      '\n\n' +
                                      notifications[index].textoNoitificacao +
                                      '\n',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )
                        )),
                  );
              } else
                return Center(
                  child: CircularProgressIndicator(
                    valueColor:
                        new AlwaysStoppedAnimation<Color>(Color(0xFF26A69A)),
                  ),
                );
            }),
      ),
    );
  }
}