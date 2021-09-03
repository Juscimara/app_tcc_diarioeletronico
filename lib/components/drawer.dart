import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/refeicao.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({ Key key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //UserAccountsDrawerHeader(
            Image.asset(
              'images/blood.png',
              width: 150,
              height: 150,
              fit: BoxFit.contain,
            ),
            ListTile(
                leading: Icon(Icons.bloodtype_outlined),
                title: Text("Glicemia"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BloodGlucoseScreen()),
                  );
                }),
                ListTile(
                leading: Icon(Icons.food_bank_outlined),
                title: Text("Refeição"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RefeicaoScreen()),
                  );
                }),
            ListTile(
              leading: Icon(Icons.exit_to_app_rounded),
              title: Text("Sair"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
              },
            ),
          ],
        ),
      );
  }
}