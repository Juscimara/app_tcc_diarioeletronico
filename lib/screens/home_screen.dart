import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(" "),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            //UserAccountsDrawerHeader(
              Image.asset(
              'images/blood.png',
              width: 150,
              height: 150,
              fit:BoxFit.contain,
            ),            
            ListTile(
              leading: Icon(Icons.person_pin),
              title: Text("Glicemia"),
              onTap: () {
                //Navigator
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Sair"),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
              }, 
            ),
          ],
        ),
      ),
    );
  }
}
