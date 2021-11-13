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
        title: Text("Política Privacidade"),
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
                        'Política Privacidade. \n\n'
                        'A sua privacidade é importante para nós. É política do Diário Eletrônico respeitar a sua privacidade em relação a qualquer informação sua que possamos coletar no site Diário Eletrônico, e outros sites que possuímos e operamos.\n\n'
                        'Solicitamos informações pessoais apenas quando realmente precisamos delas para lhe fornecer um serviço. Fazemo-lo por meios justos e legais, com o seu conhecimento e consentimento. Também informamos por que estamos coletando e como será usado.\n\n'
                        'Apenas retemos as informações coletadas pelo tempo necessário para fornecer o serviço solicitado. Quando armazenamos dados, protegemos dentro de meios comercialmente aceitáveis ​​para evitar perdas e roubos, bem como acesso, divulgação, cópia, uso ou modificação não autorizados.\n\n'
                        'Não compartilhamos informações de identificação pessoal publicamente ou com terceiros, exceto quando exigido por lei.\n\n'
                        'O nosso site pode ter links para sites externos que não são operados por nós. Esteja ciente de que não temos controle sobre o conteúdo e práticas desses sites e não podemos aceitar responsabilidade por suas respectivas políticas de privacidade.\n\n'
                        'Você é livre para recusar a nossa solicitação de informações pessoais, entendendo que talvez não possamos fornecer alguns dos serviços desejados.\n\n'
                        'O uso continuado de nosso site será considerado como aceitação de nossas práticas em torno de privacidade e informações pessoais. Se você tiver alguma dúvida sobre como lidamos com dados do usuário e informações pessoais, entre em contacto connosco.\n\n'
                        'Compromisso do Usuário.\n\n'
                        'O usuário se compromete a fazer uso adequado dos conteúdos e da informação que o Diário Eletrônico oferece no site e com caráter enunciativo, mas não limitativo:\n\n'
                        'A) Não se envolver em atividades que sejam ilegais ou contrárias à boa fé a à ordem pública;\n\n'
                        'B) Não difundir propaganda ou conteúdo de natureza racista, xenofóbica, jogos de hoje ou azar, qualquer tipo de pornografia ilegal, de apologia ao terrorismo ou contra os direitos humanos;\n\n'
                        'C) Não causar danos aos sistemas físicos (hardwares) e lógicos (softwares) do Diário Eletrônico, de seus fornecedores ou terceiros, para introduzir ou disseminar vírus informáticos ou quaisquer outros sistemas de hardware ou software que sejam capazes de causar danos anteriormente mencionados.\n\n'
                        'Mais informações.\n\n'
                        'Esperemos que esteja esclarecido e, como mencionado anteriormente, se houver algo que você não tem certeza se precisa ou não, geralmente é mais seguro deixar os cookies ativados, caso interaja com um dos recursos que você usa em nosso site.\n\n'
                        'Esta política é efetiva a partir de November/2021.\n\n',
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
                        'Li e aceito a politicas de privacidade.',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25),
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
