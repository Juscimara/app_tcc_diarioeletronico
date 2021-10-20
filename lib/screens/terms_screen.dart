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
                        '1. Do objeto.\n\n'
                        'Os serviços do Diário Eletrônico fornecidos pela pessoa jurídica OU física com a seguinte Razão Social/nome: ____, com nome fantasia ___, inscrito no CNPJ/CPF sob o nº ___, titular da propriedade intelectual sobre software, website, aplicativos, conteúdos e demais ativos relacionados à plataforma Diário Eletrônico.\n\n'
                        'A plataforma visa licenciar o uso de seu software, aplicativos e demais ativos de propriedade intelectual, fornecendo ferramentas para auxiliar e dinamizar o dia a dia dos seus usuários.\n\n'
                        'A plataforma caracteriza-se pela prestação do seguinte serviço: aferição de glicemia, bem como o cálculo das refeições realizadas pelo paciente para que possa acompanhar a evolução no tratamento contra a diabetes.\n\n'
                        '2. Da aceitação.\n\n'
                        'O presente Termo estabelece obrigações contratadas de livre e espontânea vontade, por tempo indeterminado, entre a plataforma e as pessoas físicas ou jurídicas, usuárias do OU site OU aplicativo.\n\n'
                        'Ao utilizar a plataforma o usuário aceita integralmente as presentes normas e compromete-se a observá-las, sob o risco de aplicação das penalidades cabíveis.\n\n'
                        'A aceitação do presente instrumento é imprescindível para o acesso e para a utilização de quaisquer serviços fornecidos pela empresa. Caso não concorde com as disposições deste instrumento, o usuário não deve utilizá-los.\n\n'
                        '3. Do acesso dos usuários.\n\n'
                        'Serão utilizadas todas as soluções técnicas à disposição do responsável pela plataforma para permitir o acesso ao serviço 24 (vinte e quatro) horas por dia, 7 (sete) dias por semana. No entanto, a navegação na plataforma ou em alguma de suas páginas poderá ser interrompida, limitada ou suspensa para atualizações, modificações ou qualquer ação necessária ao seu bom funcionamento.\n\n'
                        '4. Do cadastro.\n\n'
                        'O acesso às funcionalidades da plataforma exigirá a realização de um cadastro prévio.\n\n'
                        'Ao se cadastrar o usuário deverá informar dados completos, recentes e válidos, sendo de sua exclusiva responsabilidade manter referidos dados atualizados, bem como o usuário se compromete com a veracidade dos dados fornecidos.\n\n'
                        'O usuário se compromete a não informar seus dados cadastrais e/ou de acesso à plataforma a terceiros, responsabilizando-se integralmente pelo uso que deles seja feito.\n\n'
                        'Menores de 18 anos e aqueles que não possuírem plena capacidade civil deverão obter previamente o consentimento expresso de seus responsáveis legais para utilização da plataforma e dos serviços ou produtos, sendo de sua exclusiva responsabilidade o eventual acesso por menores de idade e por aqueles que não possuem plena capacidade civil sem a prévia autorização.\n\n'
                        'Mediante a realização do cadastro o usuário declara e garante expressamente ser plenamente capaz, podendo exercer e usufruir livremente dos serviços e produtos.\n\n'
                        'O usuário deverá fornecer um endereço de e-mail válido, através do qual o aplicativo realizará todas as comunicações necessárias.\n\n'
                        'Após a confirmação do cadastro, o usuário possuirá um login e uma senha pessoal, a qual assegura ao usuário o acesso individual. Desta forma, compete ao usuário exclusivamente a manutenção de referida senha de maneira confidencial e segura, evitando o acesso indevido às informações pessoais.\n\n'
                        'Toda e qualquer atividade realizada com o uso da senha será de responsabilidade do usuário, que deverá informar prontamente a plataforma em caso de uso indevido da respectiva senha.\n\n'
                        'Caberá ao usuário assegurar que o seu equipamento seja compatível com as características técnicas que viabilize a utilização da plataforma e dos serviços ou produtos.\n\n'
                        'O usuário poderá, a qualquer tempo, requerer o cancelamento de seu cadastro junto ao aplicativo Diário Eletrônico. O seu descadastramento será realizado em 5 (cinco) dias úteis, após a manifestação. \n\n'
                        'O usuário, ao aceitar os Termos e Política de Privacidade, autoriza expressamente a plataforma a coletar, usar, armazenar, tratar, ceder ou utilizar as informações derivadas do uso dos serviços, do site e quaisquer plataformas, incluindo todas as informações preenchidas pelo usuário no momento em que realizar ou atualizar seu cadastro, além de outras expressamente descritas na Política de Privacidade que deverá ser autorizada pelo usuário.\n\n'
                        '5. Do cancelamento.\n\n'
                        'O usuário poderá cancelar a contratação dos serviços de acordo com os termos que forem definidos no momento de sua contratação. Ainda, o usuário também poderá cancelar os serviços em até 7 (sete) dias após a contratação, mediante contato no aplicativo, de acordo com o Código de Defesa do Consumidor (Lei no. 8.078/90). \n\n'
                        'O serviço poderá ser cancelado por:\n\n'
                        'a)	parte do usuário: nessas condições os serviços somente cessarão quando concluído o ciclo vigente ao tempo do cancelamento;\n\n'
                        'b)	violação dos Termos de Uso: os serviços serão cessados imediatamente.\n\n'
                        '6. Do suporte.\n\n'
                        'Em caso de qualquer dúvida, sugestão ou problema com a utilização da plataforma, o usuário poderá entrar em contato com o suporte na própria plataforma.\n\n'
                        'Estes serviços de atendimento ao usuário estarão disponíveis nos seguintes dias e horários: 13h às 17h.\n\n'
                        '7. Das responsabilidades.\n\n'
                        'É de responsabilidade do usuário:\n\n'
                        'a)	defeitos ou vícios técnicos originados no próprio sistema do usuário;\n\n'
                        'b)	a correta utilização da plataforma, dos serviços ou produtos oferecidos, prezando pela boa convivência, pelo respeito e cordialidade entre os usuários;\n\n'
                        'c)	pelo cumprimento e respeito ao conjunto de regras disposto nesse Termo de Condições Geral de Uso, na respectiva Política de Privacidade e na legislação nacional e internacional;\n\n'
                        'd)	pela proteção aos dados de acesso à sua conta/perfil (login e senha).\n\n'
                        'É de responsabilidade da plataforma Diário Eletrônico:\n\n'
                        'a) indicar as características do serviço ou produto;\n\n'
                        'b) os defeitos e vícios encontrados no serviço ou produto oferecido desde que lhe tenha dado causa;\n\n'
                        'c) as informações que foram por ele divulgadas, sendo que os comentários ou informações divulgadas por usuários são de inteira responsabilidade dos próprios usuários\n\n'
                        'd) os conteúdos ou atividades ilícitas praticadas através da sua plataforma.\n\n'
                        'A plataforma não se responsabiliza por links externos contidos em seu sistema que possam redirecionar o usuário à ambiente externo a sua rede.\n\n'
                        'Não poderão ser incluídos links externos ou páginas que sirvam para fins comerciais ou publicitários ou quaisquer informações ilícitas, violentas, polêmicas, pornográficas, xenofóbicas, discriminatórias ou ofensivas.\n\n'
                        'O presente Termo de Uso concede aos usuários uma licença não exclusiva, não transferível e não sublicenciável, para acessar e fazer uso da plataforma e dos serviços e produtos por ela disponibilizados.\n\n'
                        '8. Da Propriedade intelectual. \n\n'
                        'A estrutura do site ou aplicativo, as marcas, logotipos, nomes comerciais, layouts, gráficos e design de interface, imagens, ilustrações, fotografias, apresentações, vídeos, conteúdos escritos e de som e áudio, programas de computador, banco de dados, arquivos de transmissão e quaisquer outras informações e direitos de propriedade intelectual da razão social ___, observados os termos da Lei da Propriedade Industrial(Lei n9.279/96), Lei de Direitos Autorais (Lei n9610/98) e Lei do Software(Lei n9609/98), estão devidamente reservados.\n\n'
                        'Este Termos de Uso não cede ou transfere ao usuário qualquer direito, de modo que o acesso não gera qualquer direito de propriedade intelectual ao usuário, exceto pela licença limitada ora concedida.\n\n'
                        'O uso da plataforma pelo usuário é pessoal, individual e intransferível, sendo vedado qualquer uso não autorizado, comercial ou não-comercial. Tais usos consistirão em violação dos direitos de propriedade intelectual da razão social ___, puníveis nos termos da legislação aplicável.\n\n'
                        '9. Das sanções.\n\n'
                        'Sem prejuízo das demais medidas legais cabíveis, a razão social __ poderá, a qualquer momento, advertir, suspender ou cancelar a conta do usuário:\n\n'
                        'a) que violar qualquer dispositivo do presente Termo;\n\n'
                        'b) que descumprir os seus deveres de usuário;\n\n'
                        'c) que tiver qualquer comportamento fraudulento, doloso ou que ofenda a terceiros.\n\n'
                        '10. Da rescisão.\n\n'
                        'A não observância das obrigações pactuadas neste Termo de Uso ou da legislação aplicável poderá, sem prévio aviso, ensejar a imediata rescisão unilateral por parte da razão social ____ e o bloqueio de todos os serviços prestados ao usuário.\n\n'
                        '11. Das alterações.\n\n'
                        'Os itens descritos no presente instrumento poderão sofrer alterações, unilateralmente e a qualquer tempo, por parte de ___, para adequar ou modificar os serviços, bem como para atender novas exigências legais. As alterações serão veiculadas pelo aplicativo Diário Eletrônico e o usuário poderá optar por aceitar o novo conteúdo ou por cancelar o uso dos serviços, caso seja assinante de algum serviço.\n\n'
                        '12. Da política de privacidade.\n\n'
                        'Além do presente Termo, o usuário deverá consentir com as disposições contidas na respectiva Política de Privacidade a ser apresentada a todos os interessados dentro da interface da plataforma.\n\n'
                        '13. Do foro.\n\n'
                        'Para a solução de controvérsias decorrentes do presente instrumento será aplicado integralmente o Direito brasileiro.\n\n'
                        'Os eventuais litígios deverão ser apresentados no foro da comarca de Alfenas/MG.\n\n',
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
