import 'package:app_tcc_diarioeletronico/screens/about_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/meals_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/recoverPassword_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/terms_screen.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);
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
              leading: Icon(Icons.home_outlined),
              title: Text("Home"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              }),
          ListTile(
              leading: Icon(Icons.bloodtype_outlined),
              title: Text("Glicemia"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BloodGlucoseScreen()),
                );
              }),
          ListTile(
              leading: Icon(Icons.food_bank_outlined),
              title: Text("Refeição"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MealsScreen()),
                );
              }),
          ListTile(
            leading: Icon(
              Icons.info_outline,
            ),
            title: Text("Entenda a contagem"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.password_outlined,
            ),
            title: Text("Redefinir senha"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RecoverPasswordScreen()),
              );
            },
          ),
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
