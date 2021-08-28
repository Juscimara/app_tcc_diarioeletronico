import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/providers/bloodglucose_model.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/login_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/register_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart'; 
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firestoreservice = FirestoreService();
    return    
     MaterialApp(
      title: 'Diário Eletrônico',
      theme: ThemeData(
        fontFamily: 'Poppins',
        unselectedWidgetColor: Color(0xFF31CF2B),
      ),
      initialRoute: '/',
      routes: {
        "/": (context) => LoginScreen(),
        "/register": (context) => RegisterScreen(),
        "/home": (context) => HomeScreen()
      },
     );
  }
}
