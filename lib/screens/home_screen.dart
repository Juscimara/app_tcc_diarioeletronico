import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/meals_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firestoreservice = FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Home"),
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
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.0,
              ),
              Column(children: [
                Text(
                  "Dielly Justino",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
              SizedBox(
                height: 5.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                clipBehavior: Clip.antiAlias,
                color: Colors.white,
                elevation: 5.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 22.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Idade",
                              style: TextStyle(
                                color: Color(0xFF26A69A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "22",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Peso",
                              style: TextStyle(
                                color: Color(0xFF26A69A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "54kg",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Altura",
                              style: TextStyle(
                                color: Color(0xFF26A69A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "1.60",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Button(
                  width: MediaQuery.of(context).size.width,
                  heigth: 50,
                  widget: Text(
                    'Adicionar Refeição',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MealsScreen(),
                        ));
                  }),
                  Button(
                  width: MediaQuery.of(context).size.width,
                  heigth: 50,
                  widget: Text(
                    'Adicionar Glicemia',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  onPress: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BloodGlucoseScreen(),
                        ));
                  })
            ],
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}
