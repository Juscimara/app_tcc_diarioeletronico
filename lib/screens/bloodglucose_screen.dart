import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/providers/bloodglucose_model.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BloodGlucoseScreen extends StatefulWidget {
  Bloodglucose glicemia;
  BloodGlucoseScreen({this.glicemia, Key key}) : super(key: key);
  @override
  _BloodGlucoseState createState() => _BloodGlucoseState();
}

class _BloodGlucoseState extends State<BloodGlucoseScreen> {
  @override
  void initState() {
    // final bloodglucoseProvider = Provider.of<bloodglucose>(context, listen: false);
    super.initState();
  }

  int dropdownValue = 1;
  bool isLoading = false;
  //Glucose _glucose;

  @override
  Widget build(BuildContext context) {
    // final bloodglucoseProvider = Provider.of<bloodglucose>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF26A69A),
          title: Text("Adicionar Glicemia"),
        ),
        body: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Selecione o Horário", textAlign: TextAlign.left),
                DropdownButton(
                    value: dropdownValue,
                    items: [
                      DropdownMenuItem(
                        child: Text("Café da Manhã"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                          child: Text("Depois do Café da Manhã"), value: 2),
                      DropdownMenuItem(
                        child: Text("Almoço"),
                        value: 3,
                      ),
                      DropdownMenuItem(child: Text("Café da Tarde"), value: 4),
                      DropdownMenuItem(child: Text("Janta"), value: 5),
                      DropdownMenuItem(child: Text("Depois da Janta"), value: 6)
                    ],
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value;
                      });
                    }),
                Text("Digite sua Glicemia", textAlign: TextAlign.left),
                Form(
                    // key: _formkey,
                    child: Column(
                  children: [
                    Input(
                      // controller: _bloodglucoseController,
                      text: 'Glicemia Aferida',
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Glicemia obrigatória';
                        }
                        return null;
                      },
                    ),
                  ],
                )),
                Button(
                  width: MediaQuery.of(context).size.width,
                  heigth: 50,
                  widget: Center(
                    child: !isLoading
                        ? Text(
                            'Cancelar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          ),
                  ),
                  /* onPress: () {
                          signIn();
                        }, */
                ),
                Button(
                  width: MediaQuery.of(context).size.width,
                  heigth: 50,
                  widget: Center(
                    child: !isLoading
                        ? Text(
                            'Salvar',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          )
                        : SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                              valueColor: new AlwaysStoppedAnimation<Color>(
                                Colors.white,
                              ),
                            ),
                          ),
                  ),
                  onPress: () {
                    Provider.of<Bloodglucose>(context, listen: false)
                        .saveBloodglucose();
                  },
                ),
              ],
            )));
  }
}
