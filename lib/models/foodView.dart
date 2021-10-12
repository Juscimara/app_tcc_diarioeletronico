import 'package:app_tcc_diarioeletronico/models/foods.dart';

class FoodViewModel {
  FoodModel alimento;
  int quantidade;

  FoodViewModel({this.alimento, this.quantidade});

  Map<String, dynamic> toMap() {
    return {
      '\"alimento\"': '\"' + alimento.Alimento + '\"',
      '\"quantidade\"': quantidade,
      '\"gOuMlResult\"': quantidade * alimento.gOuMl,
      '\"Calorias\"': quantidade * alimento.Calorias,
      '\"CHO\"': quantidade * alimento.CHO
    };
  }

  FoodViewModel.fromFirestore(Map<String, dynamic> firestoreDocument)
      : alimento = firestoreDocument['alimento'],
        quantidade = firestoreDocument['quantidade'];
}