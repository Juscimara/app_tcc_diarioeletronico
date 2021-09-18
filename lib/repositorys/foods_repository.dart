import 'package:app_tcc_diarioeletronico/models/foods.dart';

class FoodsRepository {
  static List<FoodModel> listAlimento;

  static initList() {
    listAlimento = JsonAlimentos.map((e) {
      return FoodModel.fromFirestore(e);
    }).toList();
  }
}
