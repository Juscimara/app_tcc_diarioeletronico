import 'package:app_tcc_diarioeletronico/screens/register_screen.dart';
import 'package:flutter/material.dart';

class ConfiguracaoScreen extends StatelessWidget {
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Color(0xFF26A69A),
        title: Text("Configurações"),
      ),
      body: Center(
        child: Column (
          children : [
            Text(" "), //Espaço

            ElevatedButton(
              onPressed: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegisterScreen()),
            );
              },
              child: Text("Cadastrar Usuário"),
            ),
              Text(" "), //Espaço            
          ],
        ),
      ),
    );
  }
}
