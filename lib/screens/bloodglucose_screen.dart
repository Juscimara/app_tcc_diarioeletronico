//import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:flutter/material.dart';

class BloodGlucoseScreen extends StatefulWidget {
  @override
  _BloodGlucoseState createState() => _BloodGlucoseState();
}

class _BloodGlucoseState extends State<BloodGlucoseScreen> {
  @override
  void initState() {
    super.initState();
  }

  String dropdownValue = 'One';
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Adicionar Glicemia"),
      ),
      /*  _loading
                    ? CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Color(0xFF31CF2B)),
                      )
                    : Column(
                        children: [
                          Button(
                              width: MediaQuery.of(context).size.width,
                              heigth: 50,
                              widget: Text(
                                'Salvar',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              /* onPress: onRegister */),
                               Button(
                              width: MediaQuery.of(context).size.width,
                              heigth: 50,
                              widget: Text(
                                'Excluir',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              /* onPress: onRegister */),
                        ],
                      ), */
    );
  }
  
}

