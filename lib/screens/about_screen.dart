import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Entenda a Contagem"),
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
        padding: EdgeInsets.all(40.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),                  
                ),
                color: Color(0xFFFFD185),
                child: Center(
                  child: Text(
                    '\n A Contagem de Carboidratos \n é uma terapia nutricional, \n'
                    'onde contabilizamos os \n gramas de carboidratos \n consumidos '
                    'nas refeições \n e lanches, com o objetivo \n de manter a glicemia '
                    'dentro \n de limites convenientes. \n '
                    'A razão pela qual contamos \n gramas de carboidratos é, \n'
                    'porque os carboidratos \n tendem '
                    'a ter maior efeito \n na sua glicemia. \n ',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(height: 40),
              Button(
                onPress: () async {
                  await launch(
                      'https://diabetes.org.br/e-book/manual-de-contagem-de-carboidratos/');
                },
                width: MediaQuery.of(context).size.width,
                heigth: 65,
                widget: Center(
                  child: Text(
                    'Clique aqui para acessar o Manual de Contagem de Carbiodratos da SBD (Sociedade Brasileira de Diabetes)',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]),
      ),
      drawer: Menu(),
    );
  }
}