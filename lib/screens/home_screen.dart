import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFF26A69A),
        title: Text("Home"),
      ),
      body: Center(
        child: Column (
          children : [
            Text(" "),            
        Button(
                width: MediaQuery.of(context).size.width,
                heigth: 50,
                widget: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                onPress: () {
                  Navigator.pushNamedAndRemoveUntil(context, '/', (_) => false);
                }),      
          ],
        ),
      ),
    );
  }
}