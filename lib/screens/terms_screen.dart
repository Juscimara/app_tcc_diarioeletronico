import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:flutter/material.dart';

class TermsScreen extends StatefulWidget {
  @override
  _TermsScreenState createState() => _TermsScreenState();
}

class _TermsScreenState extends State<TermsScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Termos de Uso"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 350.0,
                      child: Text(
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n\n'
                        'Texto dos termos de uso e condições, informa tambem sobre o compartilhamento de dados.\n',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    )
                  ]),
              Row(
                children: [
                  Column(children: [
                    Checkbox(
                      checkColor: Colors.white,
                      activeColor: Colors.yellow[700],
                      value: isChecked,
                      onChanged: (bool value) {
                        setState(() {
                          isChecked = value;
                        });
                      },
                    ),
                  ]),
                  Column(
                    children: [
                      Text(
                        'Autorizar envio de dados',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(children: [
                    isChecked
                        ? Button(
                            width: 130,
                            heigth: 40,
                            widget: Center(
                              child: Text(
                                'Continuar',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            onPress: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                          )
                        : Container(),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
