import 'dart:convert';
import 'package:app_tcc_diarioeletronico/models/foodView.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';

class MealsModel {
  List<FoodViewModel> alimentos;
  String horario;
  String dataAtual;
  String dataFormatada;

  MealsModel(
      {this.alimentos, this.horario, this.dataAtual, this.dataFormatada});

  Map<String, dynamic> toMap() {
    return {
      'alimentos': '[' + alimentos.map((e) => e.toMap()).join(', ') + ']',
      'horario': horario,
      'dataAtual': dataAtual,
      'data': dataFormatada
    };
  }

  MealsModel.fromFirestore(Map<String, dynamic> firestoredocument)
      : alimentos =
            (jsonDecode(firestoredocument['alimentos']) as List<dynamic>)
                .map((e) {
          var foodView = new FoodViewModel();
          var food = new FoodModel();
          food.Alimento = e["alimento"];
          food.gOuMl = e["gOuMlResult"];
          food.Calorias = e["Calorias"];
          food.CHO = e["CHO"];
          food.quantidade = e["quantidade"];
          foodView.alimento = food;
          return foodView;
        }).toList(),
        horario = firestoredocument['horario'],
        dataFormatada = firestoredocument['data'];
}
