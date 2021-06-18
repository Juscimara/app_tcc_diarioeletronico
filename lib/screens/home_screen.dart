import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/providers/bloodglucose_model.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final glicemiaList = Provider.of<List<MeasuredBloodglucose>>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Home"),
      ),
      body: (glicemiaList != null)
          ? ListView.builder(
              itemCount: glicemiaList.length,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  margin: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    isThreeLine: true,
                    title: Text(
                      glicemiaList[i].nome,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
                      glicemiaList[i].glicemia,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
                    trailing: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.yellow[900],
                        iconSize: 28,
                        onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    BloodGlucoseScreen(glicemia: null),
                              ),
                            )),
                  ),
                );
              },
            )
          : Center(child: Text('Nenhum acompanhamento econtrado!')),
      drawer: Drawer(
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
                leading: Icon(Icons.person_pin),
                title: Text("Glicemia"),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BloodGlucoseScreen()),
                  );
                }),
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
