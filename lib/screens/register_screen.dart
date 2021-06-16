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
                    "Cadastro de Paciente",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      color: Colors.teal[300],
                    ),
                  ),
                ),
                Input(
                  text: 'Nome',
                  controller: _nameController,
                  keyboardType: TextInputType.name,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Nome obrigatório';
                    }
                    return null;
                  },
                ),
                Input(
                  text: 'E-mail',
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Email obrigatório';
                    }
                    return null;
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 - 24,
                      child: Input(
                        text: 'Telefone',
                        controller: _phoneController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Telefone obrigatório';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5 - 24,
                      child: Input(
                        text: 'Senha',
                        obscureText: true,
                        controller: _passwordController,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Senha obrigatória';
                          } else if (value.length < 6) {
                            return 'Senha pequena';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7 - 24,
                      child: Input(
                        text: 'Rua',
                        controller: _streetController,
                        keyboardType: TextInputType.streetAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Rua obrigatória';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3 - 24,
                      child: Input(
                        text: 'Nº',
                        controller: _numController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Informe';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                Input(
                  text: 'Bairro',
                  controller: _districtController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Bairro obrigatório';
                    }
                    return null;
                  },
                ),
                Column(
                        children: [
                          Input(
                            text: 'CPF',
                            controller: _cpfController,
                            keyboardType: TextInputType.number,
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'CPF obrigatório';
                              }
                              return null;
                            },
                          ),
                        ],
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
