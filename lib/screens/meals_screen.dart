import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/components/dropdown.dart';
import 'package:app_tcc_diarioeletronico/components/input.dart';
import 'package:app_tcc_diarioeletronico/models/foodView.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';
import 'package:app_tcc_diarioeletronico/models/meals.dart';
import 'package:app_tcc_diarioeletronico/models/notification.dart';
import 'package:app_tcc_diarioeletronico/repositorys/foods_repository.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/home_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';

class MealsScreen extends StatefulWidget {
  const MealsScreen({Key key}) : super(key: key);

  @override
  _RefeicaoState createState() => _RefeicaoState();
}

class _RefeicaoState extends State<MealsScreen> {
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/ic_launcher");
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin.initialize(initSetttings,
        onSelectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) {
    debugPrint("payload : $payload");
    showDialog(
      context: context,
      builder: (_) => new AlertDialog(
        title: new Text('Alerta Refeição'),
        content: new Text('$payload'),
      ),
    );
  }

  List<FoodViewModel> food = [];
  String foodSelected = "";
  bool show = false;
  TextEditingController dropdownValue = TextEditingController();
  TextEditingController qtdController = TextEditingController(text: '1');
  TextEditingController textEditingValue = new TextEditingController();
  var notificacao, textoNoitificacao;

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd/MM/yyyy');
  final String dataFormatter = formatter.format(now);

  @override
  final _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    FoodsRepository.initList();
    FoodModel alimento = FoodsRepository.listAlimento
        .where((alimento) => alimento.Alimento.toLowerCase()
            .contains(foodSelected.toLowerCase()))
        .first;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Adicionar Refeição"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AlertsScreen(),
                  ));
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(children: [
              Text(
                "Data: " + dataFormatter + "\n",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Dropdown(
                options: [
                  'Selecione',
                  'Lanche da Manhã',
                  'Café da Manhã',
                  'Almoço',
                  'Café da Tarde',
                  'Jantar',
                  'Refeição Extra'
                ],
                text: "Selecione o Horário",
                controller: dropdownValue,
                validator: (value) {
                  if (value == 'Selecione') {
                    return 'Informe';
                  }
                  return null;
                },
              ),
              Text("\n"),
              Autocomplete<String>(
                optionsBuilder: (textEditingValue) {
                  if (textEditingValue.text == '') {
                    return const Iterable<String>.empty();
                  }
                  return FoodsRepository.listAlimento
                      .where((alimento) => alimento.Alimento.toLowerCase()
                          .contains(textEditingValue.text.toLowerCase()))
                      .map((alimentoModel) => alimentoModel.Alimento);
                },
                onSelected: (String selection) {
                  setState(() {
                    show = true;
                    foodSelected = selection;
                  });
                },
                fieldViewBuilder:
                    (context, controller, focusNode, onEditingComplete) {
                  this.textEditingValue = controller;
                  return TextField(
                    controller: controller,
                    focusNode: focusNode,
                    onEditingComplete: onEditingComplete,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.yellow[700]),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.yellow[700]),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.yellow[700]),
                      ),
                      hintText: "Selecione o Alimento",
                      prefixIcon: Icon(Icons.search, color: Color(0xFF26A69A)),
                    ),
                  );
                },
              ),
              Text("\n"),
              show
                  ? Container(
                      child: Column(children: [
                        Input(
                          controller: qtdController,
                          text:
                              "Digite a quantidade ingerida em ${alimento.MedidaUsual}",
                        ),
                        Button(
                            width: MediaQuery.of(context).size.width,
                            heigth: 50,
                            widget: Text(
                              'Adicionar alimento na lista',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            onPress: () {
                              setState(() {
                                food.add(new FoodViewModel(
                                    alimento: alimento,
                                    quantidade: int.parse(qtdController.text)));
                              });
                            }),
                        Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          color: Color(0xFFFFD185),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "\n LISTA DE ALIMENTOS SELECIONADOS: \n",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Column(
                                children: food
                                    .map(
                                      (e) => Container(
                                        child: Column(children: [
                                          Text(
                                            "Nome: " + e.alimento.Alimento,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                          Text(
                                            "Quantidade: " +
                                                e.quantidade.toString(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Medida: " + e.alimento.MedidaUsual,
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Gramas ou Ml: " +
                                                (e.alimento.gOuMl *
                                                        e.quantidade)
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Carboidratos: " +
                                                (e.alimento.CHO * e.quantidade)
                                                    .toString() +
                                                "g",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            "Calorias: " +
                                                (e.alimento.Calorias *
                                                        e.quantidade)
                                                    .toString(),
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          IconButton(
                                            icon: Icon(
                                                Icons.remove_circle_outline),
                                            color: Colors.black,
                                            onPressed: () {
                                              setState(() {
                                                food.remove(e);
                                              });
                                            },
                                          ),
                                        ]),
                                      ),
                                    )
                                    .toList(),
                              ),
                            ],
                          ),
                        ),
                        Button(
                            width: MediaQuery.of(context).size.width,
                            heigth: 50,
                            widget: Text(
                              'Salvar',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            onPress: () {
                              //if (_formKey.currentState.validate()) {
                              if (food.length > 0) {
                                MealsModel r = new MealsModel(
                                    alimentos: food,
                                    horario: dropdownValue.text,
                                    dataAtual: dataFormatter);
                                FirestoreService().saveMeals(r);

                                if (7 <= 70) {
                                  showNotificationNiveisNormais();
                                  notificacao = 'Alerta Refeição';
                                  textoNoitificacao = 'teste';
                                  NotificationModel notificationModel =
                                      new NotificationModel(
                                          notificacao: notificacao,
                                          textoNoitificacao: textoNoitificacao,
                                          horario: dropdownValue.text,
                                          dataAtual: DateTime.now().toString(),
                                          dataFormatada: dataFormatter);
                                  FirestoreService()
                                      .saveNotification(notificationModel);
                                }
                                showAlertDialog(context);
                              } else
                                showAlertDialogError(context);
                              //}
                            }),
                      ]),
                    )
                  : Container(),
            ]),
          ),
        ),
      ),
      drawer: Menu(),
    );
  }

  showNotificationNiveisNormais() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'channel DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var platform = new NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(
        0, 'Alerta Refeição', 'Refeição em níveis baixos!', platform,
        payload: 'teste');
  }

  showNotificationNiveisAlterados() async {
    var android = new AndroidNotificationDetails(
        'channel id', 'channel NAME', 'channel DESCRIPTION',
        priority: Priority.high, importance: Importance.max);
    var platform = new NotificationDetails(android: android);
    await flutterLocalNotificationsPlugin.show(
        0, 'Alerta Refeição', 'Refeição em níveis altos!', platform,
        payload: 'teste');
  }
}

void showAlertDialog(BuildContext context) {
  // ignore: deprecated_member_use
  Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ));
      });
  AlertDialog alerta = AlertDialog(
    content: Text("Refeição salva com sucesso!"),
    actions: [
      okButton,
    ],
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}

void showAlertDialogError(BuildContext context) {
  AlertDialog alerta = AlertDialog(
    content: Text("Adicione alimentos na lista para salvar a refeição!"),
    actions: [],
  );
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alerta;
    },
  );
}
