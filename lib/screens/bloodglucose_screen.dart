import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/components/dropdown.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BloodGlucoseScreen extends StatefulWidget {
  BloodGlucoseScreen({Key key}) : super(key: key);

  @override
  _BloodGlucoseState createState() => _BloodGlucoseState();
}

class _BloodGlucoseState extends State<BloodGlucoseScreen> {
  @override
  TextEditingController bloodglucoseController = TextEditingController();
  TextEditingController dropdownValue = TextEditingController();

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd/MM/yyyy');
  final String dataFormatter = formatter.format(now);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Adicionar Glicemia"),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              "Data: " + dataFormatter + "\n",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            Dropdown(
              options: [
                'Selecione',
                'Café da Manhã',
                'Depois do Café da Manhã',
                'Almoço',
                'Café da Tarde',
                'Jantar',
                'Depois do Jantar'
              ],
              text: "Selecione o Horário",
              controller: dropdownValue,
            ),
            Form(
                child: Column(
              children: [
                Input(
                  controller: bloodglucoseController,
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
                  child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              )),
              onPress: () {
                MeasuredBloodglucoseModel mb = new MeasuredBloodglucoseModel(
                    glicemia: bloodglucoseController.text,
                    horario: dropdownValue.text,
                    dataAtual: dataFormatter);
                FirestoreService().saveBloodglucose(mb);
                showAlertDialog(context);
              },
            ),
          ],
        ),
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
