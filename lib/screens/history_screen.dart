import 'dart:convert';

import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/components/dropdown.dart';
import 'package:app_tcc_diarioeletronico/models/foodView.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryScreen> {
  @override
  List<FoodViewModel> food = [];
  TextEditingController textEditingValue = new TextEditingController();
  TextEditingController dropdownValue = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  DateTime pickedDateInitial;
  DateTime pickedDateFinal;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF26A69A),
          title: Text("Histórico"),
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
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(children: [
            DateTimePicker(
              type: DateTimePickerType.date,
              locale: Locale('pt', "BR"),
              dateMask: 'dd/MM/yyyy',
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              icon: Icon(Icons.event),
              dateLabelText: 'Data inicial',
              onChanged: (date) => startDateController.text = date,
              validator: (val) {
                if (val.isEmpty)
                  return "Informe uma data";
                else
                  return null;
              },
              onSaved: (val) => print(val),
            ),
            DateTimePicker(
              type: DateTimePickerType.date,
              locale: Locale('pt', "BR"),
              dateMask: 'dd/MM/yyyy',
              //initialValue: DateTime.now().toString(),
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              icon: Icon(Icons.event),
              dateLabelText: 'Data final',
              onChanged: (date) => endDateController.text = date,
              validator: (val) {
                if (val.isEmpty)
                  return "Informe uma data";
                else
                  return null;
              },
              onSaved: (val) => print(val),
            ),
            Text("\n"),
            Dropdown(
              options: ['Selecione', 'Refeição', 'Glicemia'],
              text: "Selecione hitórico abaixo:",
              controller: dropdownValue,
              validator: (value) {
                if (value == 'Selecione') {
                  return 'Informe';
                }
                return null;
              },
            ),
            Button(
              width: MediaQuery.of(context).size.width,
              heigth: 50,
              widget: Center(
                  child: Text(
                'Pesquisar histórico',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
              onPress: () {
                FirestoreService()
                    .getHistorySnack(DateTime.parse(startDateController.text),
                        DateTime.parse(endDateController.text))
                    .then((value) => {});
                /* setState(() {
                    food.add(new FoodViewModel(
                        alimento: alimento,
                        quantidade: int.parse(qtdController.text)));
                  }); */
                /*  .then((value) => {
                            /* value.forEach((element) {
                              var history = jsonDecode(element.alimentos); */
                              print(value)
                          /*   }) */
                          }); */
              },
            ),
            Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17),
              ),
              color: Color(0xFFFFD185),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "\n Histórico de alimentação: \n",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: food
                        .map(
                          (e) => Container(
                            child: Column(children: [
                              Text(
                                "Nome: " + e.alimento.Alimento,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                "Quantidade: " + e.quantidade.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Medida: " + e.alimento.MedidaUsual,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Gramas ou Ml: " +
                                    (e.alimento.gOuMl * e.quantidade)
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Carboidratos: " +
                                    (e.alimento.CHO * e.quantidade).toString() +
                                    "g",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                "Calorias: " +
                                    (e.alimento.Calorias * e.quantidade)
                                        .toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              /* Text(
                                    "Glicemia: " +
                                        (e.alimento.Calorias * e.quantidade)
                                            .toString(),
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ), */
                              IconButton(
                                icon: Icon(Icons.remove_circle_outline),
                                color: Colors.black,
                                onPressed: () {
                                  setState(() {
                                    food.remove(e);
                                  });
                                },
                              ),
                            ]),
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
            )
          ]),
        ),
        drawer: Menu());
  }
}

void showAlertDialog(BuildContext context) {
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      });
  AlertDialog alerta = AlertDialog(
    content: Text("Glicemia salva com sucesso!"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
