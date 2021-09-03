import 'package:app_tcc_diarioeletronico/models/alimento.dart';

class AlimentoRepository {
  static List<AlimentoModel> listAlimento;

  static initList() {
    listAlimento = JsonAlimentos.map((e) {
      return AlimentoModel.fromFirestore(e);
    }).toList();
  }
}
