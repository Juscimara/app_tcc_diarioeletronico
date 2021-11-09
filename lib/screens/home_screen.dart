import 'package:app_tcc_diarioeletronico/components/button.dart';
import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/screens/alerts_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/bloodglucose_screen.dart';
import 'package:app_tcc_diarioeletronico/screens/meals_screen.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:app_tcc_diarioeletronico/utils/calc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var firestoreservice = FirestoreService();
  UserData user;
  double calorias, carbo;
  FoodModel f = new FoodModel();

  static final DateTime now = DateTime.now();
  static final DateFormat formatter = DateFormat('dd/MM/yyyy');
  final String dataFormatter = formatter.format(now);

  Future<UserData> returnUser() async {
    return await firestoreservice.getUserData();
  }

  Future<double> returncalorias() async {
    return await calcCalories();
  }

  Future<double> returncarboidratos() async {
    return await calcCarbo();
  }

  Future<FoodModel> returnSoma() async {
    return await firestoreservice.getMeals(dataFormatter);
  }

  saveState() async {
    user = await returnUser();
    calorias = await returncalorias();
    carbo = await returncarboidratos();
    var soma = await returnSoma();
    f.Calorias = soma.Calorias;
    f.CHO = soma.CHO;
    setState(() {
      user = user;
      calorias = calorias;
      carbo = carbo;
      f.Calorias = f.Calorias;
      f.CHO = f.CHO;
    });
  }

  List<charts.Series> carboList;
  List<charts.Series> caloriesList;

  @override
  void initState() {
    super.initState();
    saveState();
    carboList = CarboidratosData();
    caloriesList = CaloriasData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Home"),
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: user != null
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(children: [
                      Text(
                        "Olá, " + user.name + "!",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Dados do dia $dataFormatter"),
                    ]),
                    SizedBox(
                      height: 5.0,
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Colors.green[50],
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4.0, vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Idade",
                                    style: TextStyle(
                                      color: Color(0xFF26A69A),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    user.age + " anos",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Peso",
                                    style: TextStyle(
                                      color: Color(0xFF26A69A),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    user.weight + "Kg",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Altura",
                                    style: TextStyle(
                                      color: Color(0xFF26A69A),
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    user.height + "cm",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Color(0xFFFFD185),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15.0),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Calorias a consumir: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    calorias.toString() + "Kcal",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Calorias já consumidas: ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                f.Calorias.toString() + "Kcal",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Text(
                      "Gráfico de consumo de calorias:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      height: 100,
                      child: barChartCalories(),
                    ),
                    Text(""),
                    Card(
                      margin:
                          EdgeInsets.symmetric(horizontal: 1.0, vertical: 5.0),
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: Color(0xFFFFD185),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 15.0),
                            child: Center(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Carboidratos a consumir: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    carbo.toString() + "g",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Carboidratos já consumidos: ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                f.CHO.toString() + "g",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ),
                    Text(
                      "Gráfico de consumo de carboidratos:",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Container(
                      height: 100,
                      child: barChartCarbo(),
                    ),
                    Text(
                      "\n \n LEGENDA DOS GRÁFICOS: ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Consumo permitido.",
                      style: TextStyle(
                        color: Color(0xFF26A69A),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Você ainda está dentro dos valores do consumo permitido.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Cuidado, você já atingiu 90% do consumo permitido.",
                      style: TextStyle(
                        color: Color(0xFFFFD185),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Atenção, você já ultrapassou o consumo permitido. \n",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Button(
                                width: 180,
                                heigth: 50,
                                widget: Text(
                                  'Adicionar Refeição',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MealsScreen(),
                                      ));
                                }),
                          ],
                        ),
                        Column(
                          children: [
                            Text('   '),
                          ],
                        ),
                        Column(
                          children: [
                            Button(
                                width: 180,
                                heigth: 50,
                                widget: Text(
                                  'Adicionar Glicemia',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                                onPress: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            BloodGlucoseScreen(),
                                      ));
                                }),
                          ],
                        ),
                      ],
                    ),
                  ],
                )
              : Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(
                        Color(0xFF26A69A),
                      ),
                    ),
                  ),
                ),
        ),
      ),
      drawer: Menu(),
    );
  }

  List<charts.Series<Carboidratos, String>> CarboidratosData() {
    final carboidratosConsumidas = [
      Carboidratos('Carboidratos Consumidos', f.CHO),
    ];

    final carboTotais = [
      Carboidratos('Total de Carboidratos', carbo),
    ];

    return [
      charts.Series<Carboidratos, String>(
        id: 'Carboidratos',
        domainFn: (Carboidratos sales, _) => sales.Text,
        measureFn: (Carboidratos sales, _) => f.CHO,
        data: carboidratosConsumidas,
        fillColorFn: (Carboidratos sales, _) {
          if (f.CHO > carbo) {
            return charts.MaterialPalette.red.shadeDefault;
          } else if ((0.9 * carbo) < carbo && f.CHO > (0.9 * carbo)) {
            return charts.MaterialPalette.yellow.shadeDefault;
          } else {
            return charts.MaterialPalette.gray.shadeDefault;
          }
        },
      ),
      charts.Series<Carboidratos, String>(
        id: 'Carboidratos',
        domainFn: (Carboidratos sales, _) => sales.Text,
        measureFn: (Carboidratos sales, _) => carbo,
        data: carboTotais,
        fillColorFn: (Carboidratos sales, _) {
          return charts.MaterialPalette.teal.shadeDefault;
        },
      )
    ];
  }

  barChartCarbo() {
    return charts.BarChart(
      carboList,
      animate: true,
      vertical: false,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.grouped,
        strokeWidthPx: 0.0,
      ),
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
    );
  }

  List<charts.Series<Calorias, String>> CaloriasData() {
    final caloriasConsumidas = [
      Calorias('Calorias Consumidas', f.Calorias),
    ];

    final caloriasTotais = [
      Calorias('Total de calorias', calorias),
    ];

    return [
      charts.Series<Calorias, String>(
        id: 'Calorias',
        domainFn: (Calorias sales, _) => sales.Text,
        measureFn: (Calorias sales, _) => f.Calorias,
        data: caloriasConsumidas,
        fillColorFn: (Calorias sales, _) {
          if (f.Calorias > calorias) {
            return charts.MaterialPalette.red.shadeDefault;
          } else if ((0.9 * calorias) < calorias &&
              f.Calorias > (0.9 * calorias)) {
            return charts.MaterialPalette.yellow.shadeDefault;
          } else {
            return charts.MaterialPalette.gray.shadeDefault;
          }
        },
      ),
      charts.Series<Calorias, String>(
        id: 'Calorias',
        domainFn: (Calorias sales, _) => sales.Text,
        measureFn: (Calorias sales, _) => calorias,
        data: caloriasTotais,
        fillColorFn: (Calorias sales, _) {
          return charts.MaterialPalette.teal.shadeDefault;
        },
      )
    ];
  }

  barChartCalories() {
    return charts.BarChart(
      caloriesList,
      animate: true,
      vertical: false,
      barGroupingType: charts.BarGroupingType.grouped,
      defaultRenderer: charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.grouped,
        strokeWidthPx: 0.0,
      ),
      domainAxis: charts.OrdinalAxisSpec(
        renderSpec: charts.NoneRenderSpec(),
      ),
    );
  }
}

class Carboidratos {
  final String Text;
  double carboidratos;

  Carboidratos(this.Text, this.carboidratos);
}

class Calorias {
  final String Text;
  double calorias;

  Calorias(this.Text, this.calorias);
}
