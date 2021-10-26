import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';

Future<String> calcIMC() async {  
  UserData userData = await FirestoreService().getUserData();
  double imc = double.parse(userData.weight) / ((double.parse(userData.height) / 100) * (double.parse(userData.height) / 100));
  if (int.parse(userData.age) <= 59) {
    if (imc < 18.5)
      return "Magreza";
    else if (imc < 24.9)
      return "Normal";
    else if (imc < 29.9)
      return "Sobrepeso";
    else
      return "Obeso";
  } else {
    if (imc < 22)
      return "Magreza";
    else if (imc < 27)
      return "Normal";
    else
      return "Obeso";
  }
}

Future<double> calcCalories() async {  
  UserData userData = await FirestoreService().getUserData();
  String imc = await calcIMC();
  double calories;
  if (imc == "Magreza" || imc == "Normal")
    calories = double.parse(userData.weight) * 27;
  else
    calories = double.parse(userData.weight) * 25;
  return calories;
}

Future<int> calcCarbo() async {
  double calories = await calcCalories();
  double carbo = (calories * 0.55) / 4;
  return carbo.toInt();
}