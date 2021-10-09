import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/models/foodView.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';
import 'package:app_tcc_diarioeletronico/repositorys/foods_repository.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  HistoryScreen({Key key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<HistoryScreen> {
  @override
  List<FoodViewModel> food = [];
  String dateSelected = "";
  bool show = false;
  TextEditingController qtdController = TextEditingController(text: '1');
  TextEditingController textEditingValue = new TextEditingController();
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
 /*  FoodModel alimento = FoodsRepository.listAlimento
        .where((alimento) => alimento.Alimento.toLowerCase()
            .contains(dateSelected.toLowerCase()))
        .first; */
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Histórico"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        height: 150,
        child: Column(children: [
          TextField(
            controller: dateinput,
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: "Insira a data inicial"),
            readOnly: true,
            onTap: () async {
              DateTime pickedDateInitial = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));

              if (pickedDateInitial != null) {
                print(pickedDateInitial);
                String formattedDateInitial =
                    DateFormat('dd-MM-yyyy').format(pickedDateInitial);
                print(formattedDateInitial);
                setState(() {
                  dateinput.text = formattedDateInitial;
                });
              } else {
                print("A data não foi selecionada!");
              }
            },
          ),
          TextField(
            controller: dateinput,
            decoration: InputDecoration(
                icon: Icon(Icons.calendar_today),
                labelText: "Insira a data final"),
            readOnly: true,
            onTap: () async {
              DateTime pickedDateFinal = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2101));

              if (pickedDateFinal != null) {
                print(pickedDateFinal);
                String formattedDateFinal =
                    DateFormat('dd-MM-yyyy').format(pickedDateFinal);
                print(formattedDateFinal);
                setState(() {
                  dateinput.text = formattedDateFinal;
                });
              } else {
                print("A data não foi selecionada!");
              }
            },
          ),
          Text("\n"),
          Autocomplete<String>(
            optionsBuilder: (textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return FoodsRepository.listAlimento
                  .where((alimento) => alimento.Alimento.toLowerCase()
                      .contains(textEditingValue.text.toLowerCase()))
                  .map((alimentoModel) => alimentoModel.Alimento);
            },
            onSelected: (String selection) {
              setState(() {
                show = true;
                dateSelected = selection;
              });
            },
            fieldViewBuilder:
                (context, controller, focusNode, onEditingComplete) {
              this.textEditingValue = controller;
              return Button(
                width: MediaQuery.of(context).size.width,
                heigth: 50,
                widget: Center(
                    child: Text(
                  'Visualizar',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                )),
                onPress: () {
                  setState(() {
                    /* food.add(new FoodViewModel(
                        alimento: alimento,
                        quantidade: int.parse(qtdController.text))); */
                  });
                },
              );
            },
          ),
          Text("\n"),
          show
              ? Card(
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
                                        (e.alimento.CHO * e.quantidade)
                                            .toString() +
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
                                  /*  Text(
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
              : Container(),
        ]),
      ),
      drawer: Menu(),
    );
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
