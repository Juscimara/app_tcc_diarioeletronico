import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';

class AlertsScreen extends StatefulWidget {
  const AlertsScreen({Key key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<AlertsScreen> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  UserData userData = new UserData();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Alertas"),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formkey,
            child: Column(
              children: [Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: Image.asset(
                    'images/warn.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}
