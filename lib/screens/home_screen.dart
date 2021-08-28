import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/providers/bloodglucose_model.dart';
import 'package:app_tcc_diarioeletronico/repositorys/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final firestoreservice = FirestoreService();

  void init () async{
     BloodglucoseRepository.listBloodglucose = await firestoreservice.getBloodglucose().first;    
  }

  void initState() {
      init();
      super.initState();
   }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    final glicemiaList = Provider.of<List<MeasuredBloodglucose>>(context);
=======
    //final glicemia_list = Provider.of<List<Bloodglucose>>(context);
    
>>>>>>> juscimara
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Glicemia"),
      ),
<<<<<<< HEAD
      body: (glicemiaList != null)
          ? ListView.builder(
              itemCount: glicemiaList.length,
=======
      body: (BloodglucoseRepository.listBloodglucose != null)
          ? ListView.builder(
              itemCount: BloodglucoseRepository.listBloodglucose.length,
>>>>>>> juscimara
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
<<<<<<< HEAD
                      glicemiaList[i].horario,
=======
                      BloodglucoseRepository.listBloodglucose[i].nome ?? "teste",
>>>>>>> juscimara
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    subtitle: Text(
<<<<<<< HEAD
                      glicemiaList[i].glicemia,
=======
                      BloodglucoseRepository.listBloodglucose[i].glicemia ?? "teste",
>>>>>>> juscimara
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 18,
                      ),
                    ),
<<<<<<< HEAD
=======
                    trailing: IconButton(
                        icon: Icon(Icons.edit),
                        color: Colors.yellow[900],
                        iconSize: 28,
                        onPressed: () => {}
                        // Navigator.of(context).push(
                        //       MaterialPageRoute(
                        //         builder: (context) => BloodGlucoseScreen(
                        //             glicemia: glicemia_list[i]),
                        //       ),
                            )
>>>>>>> juscimara
                  ),
                );
              },
            )
          : Center(child: Text('Nenhum acompanhamento econtrado!')),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => BloodGlucoseScreen(glicemia: null),
            ),
          ),
        ),
        backgroundColor: Colors.teal[300],
      ),
      drawer: Menu(),
    );
  }
}
