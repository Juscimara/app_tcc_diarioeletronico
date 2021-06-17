import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/services/auth_service.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _streetController = TextEditingController();
  TextEditingController _numController = TextEditingController();
  TextEditingController _districtController = TextEditingController();
  TextEditingController _ufController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();

  @override
  void initState() {
    _cityController.addListener(() {
      setState(() {
        _city = _cityController.text;
      });
    });
    _ufController.addListener(() {
      setState(() {
        _uf = _ufController.text;
      });
    });
    super.initState();
  }

  String dropdownValue = 'One';
  String _type = "Doador", _city = "Alfenas", _uf = "MG";
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();

  Future<void> onRegister() async {
    setState(() {
      _loading = true;
    });

    if (_formKey.currentState.validate()) {
      User authUser = await AuthService.signUpUser(
        email: _emailController.text,
        senha: _passwordController.text,
      );

      if (authUser != null) {
        UserData user;
        user = UserData(
          id: authUser.uid,
          name: _nameController.text,
          email: _emailController.text,
          phone: _phoneController.text,
          password: _passwordController.text,
          street: _streetController.text,
          num: _numController.text,
          district: _districtController.text,
          cpf: _cpfController.text,
        );
        await FirestoreService().saveUser(user);

        Navigator.pushNamedAndRemoveUntil(context, '/home', (_) => false);
      }
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: Text(
                    "Adicionar Glicemia",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.teal[300],
                    ),
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  items: <String>['Café da Manhã', 'Almoço', 'Café da Tarde', 'Jantar']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                _loading
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
                                'Cadastrar',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              onPress: onRegister),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
