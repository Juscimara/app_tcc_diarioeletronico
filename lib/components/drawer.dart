import 'package:app_tcc_diarioeletronico/screens/about_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/history_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/meals_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/recoverPassword_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key key}) : super(key: key);
  
  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
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
              leading: Icon(Icons.history),
              title: Text("Histórico"),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()),
                );
              }),
          ListTile(
            leading: Icon(
              Icons.notifications_none_rounded,
            ),
            title: Text("Notificações"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AlertsScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.info_outline,
            ),
            title: Text("Entenda a Contagem"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.vpn_key_outlined,
            ),
            title: Text("Redefinir senha"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RecoverPasswordScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_rounded),
            title: Text("Sair"),
            onTap: () {
              _signOut();
              Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
            },
          ),
        ],
      ),
    );
  }
}
