import 'package:app_tcc_diarioeletronico/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Diário Eletrônico',
        theme: ThemeData(
          fontFamily: 'Poppins',
          unselectedWidgetColor: Color(0xFF31CF2B),
        ),
        home: MyHomePage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('pt')
        ],
        );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return _introScreen();
  }
}

Widget _introScreen() {
  return Stack(children: <Widget>[
    SplashScreen(
      seconds: 5,
      gradientBackground: LinearGradient(
        colors: [Color(0xFF26A69A), Color(0xFF26A69A)],
      ),
      navigateAfterSeconds: LoginScreen(),
      loaderColor: Colors.transparent,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0, left: 95.0),
          child: Image.asset(
            'images/blood.png',
            width: 250,
            height: 250,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 24.0, left: 95.0),
          child: CircularProgressIndicator(
            backgroundColor: Colors.yellow[100],
            valueColor: new AlwaysStoppedAnimation<Color>(
              Colors.yellow[700],
            ),
          ),
        ),
      ],
    ),
  ]);
}
