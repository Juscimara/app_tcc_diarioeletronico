import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/components/dropdown.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryScreen> {
  @override
  bool visibleGlicemia = false, visibleRefeicao = false;
  TextEditingController dropdownValue = TextEditingController();
  TextEditingController startDateController = TextEditingController();
  TextEditingController endDateController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  DateTime starDate = DateTime(1900, 01, 01), endDate = DateTime.now();
  DateFormat formatter = DateFormat('dd/MM/yyyy');
  String starDateFormatter, endDateFormatter;

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
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
              ),
              DateTimePicker(
                type: DateTimePickerType.date,
                locale: Locale('pt', "BR"),
                dateMask: 'dd/MM/yyyy',
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
              ),
              Text('\n'),
              Dropdown(
                options: [
                  'Selecione',
                  'Refeição',
                  'Glicemia',
                ],
                text: "Selecione o que deseja visualizar",
                controller: dropdownValue,
                validator: (value) {
                  if (value == 'Selecione') {
                    return 'Selecione';
                  }
                  return null;
                },
              ),
              Button(
                width: MediaQuery.of(context).size.width,
                heigth: 50,
                widget: Center(
                    child: Text(
                  'Pesquisar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )),
                onPress: () {
                  if (_formKey.currentState.validate()) {
                    starDate = DateTime.parse(startDateController.text);
                    endDate = DateTime.parse(endDateController.text);
                    starDateFormatter = formatter.format(starDate);
                    endDateFormatter = formatter.format(endDate);

                    if (dropdownValue.text == "Glicemia") {
                      setState(() {
                        visibleGlicemia = true;
                      });
                    } else if (dropdownValue.text == "Refeição") {
                      setState(() {
                        visibleRefeicao = true;
                      });
                    }
                  }
                },
              ),
              Text(
                "\n DADOS ECONTRADOS:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              visibleRefeicao
                  ? FutureBuilder<List<FoodModel>>(
                      future: FirestoreService()
                          .getHistoryMeals(starDateFormatter, endDateFormatter),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<FoodModel> refeicao = snapshot.data ?? [];
                          return Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: refeicao.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 5),
                                child: Card(
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  color: Color(0xFFFFD185),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 8),
                                    child: Column(
                                      children: [
                                        Text(
                                          '\n Glicemia aferida: ' +
                                              refeicao[index].Alimento +
                                              'mg/dL' +
                                              '\n' +
                                              'Data: ' +
                                              refeicao[index].MedidaUsual +
                                              ' Horário: ' +
                                              refeicao[index].CHO.toString() +
                                              '\n' +
                                              ' Horário: ' +
                                              refeicao[index]
                                                  .Calorias
                                                  .toString() +
                                              '\n' +
                                              ' Horário: ' +
                                              refeicao[index]
                                                  .quantidade
                                                  .toString() +
                                              '\n',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(
                            child: Text('Nenhum item encontrado!'),
                          );
                        }
                      },
                    )
                  : Container(),
              visibleGlicemia
                  ? StreamBuilder<List<MeasuredBloodglucoseModel>>(
                      stream: FirestoreService().getHistoryBloodglucose(
                          starDateFormatter, endDateFormatter),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          List<MeasuredBloodglucoseModel> glicemia =
                              snapshot.data ?? [];
                          return Container(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              itemCount: glicemia.length,
                              itemBuilder: (context, index) => Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                color: Color(0xFFFFD185),
                                child: Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Column(
                                    children: [
                                      Text(
                                        '\n Glicemia aferida: ' +
                                            glicemia[index].glicemia +
                                            'mg/dL' +
                                            '\n' +
                                            'Data: ' +
                                            glicemia[index].data +
                                            ' Horário: ' +
                                            glicemia[index].horario +
                                            '\n',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Center(
                            child: Text('Nenhum item encontrado!'),
                          );
                        }
                      },
                    )
                  : Container(),
            ]),
          ),
        ),
      ),
      drawer: Menu(),
    );
  }
}