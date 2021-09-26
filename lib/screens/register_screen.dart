import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/screens/terms_screen.dart';
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
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _ufController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  TextEditingController _heightController = TextEditingController();
  TextEditingController _ageController = TextEditingController();

  @override
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
            city: _cityController.text,
            uf: _ufController.text,
            weight: _weightController.text,
            height: _heightController.text,
            age: _ageController.text);
        await FirestoreService().saveUser(user);

        Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsScreen()),
                            );
      }
    }

    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Cadastro de Paciente"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.7 - 24,
                      child: Input(
                        text: 'Cidade',
                        controller: _cityController,
                        keyboardType: TextInputType.streetAddress,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Cidade obrigatória';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3 - 24,
                      child: Input(
                        text: 'UF',
                        controller: _ufController,
                        keyboardType: TextInputType.streetAddress,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.4 - 24,
                      child: Input(
                        text: 'Peso (Kg)',
                        controller: _weightController,
                        keyboardType: TextInputType.number,
                        validator: (value) {
                          if (value.isEmpty) {
                            return 'Peso obrigatório';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3 - 24,
                      child: Input(
                          text: 'Altura (Cm)',
                          keyboardType: TextInputType.number,
                          controller: _heightController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Altura obrigatória';
                            }
                            return null;
                          }),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.3 - 24,
                      child: Input(
                          text: 'Idade',
                          keyboardType: TextInputType.number,
                          controller: _ageController,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Idade obrigatória';
                            }
                            return null;
                          }),
                    )
                  ],
                ),
                _loading
                    ? CircularProgressIndicator(
                        valueColor: new AlwaysStoppedAnimation<Color>(
                            Colors.yellow[700]),
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
