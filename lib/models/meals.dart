import 'package:app_tcc_diarioeletronico/models/foodView.dart';

class MealsModel {
  List<FoodViewModel> alimentos;
  String horario;  
  String dataAtual;

  MealsModel({this.alimentos, this.horario, this.dataAtual});
  Map<String, dynamic> toMap() {
    return {
      'alimentos': alimentos.map((e) => e.toMap()).join(' '),
      'horario': horario,
      'dataAtual': dataAtual
    };
  }
}