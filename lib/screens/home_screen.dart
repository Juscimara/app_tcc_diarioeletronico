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
            Text(" "), //Espaço          
          ],
        ),
      ),
    );
  }
}