import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class Bloodglucose extends ChangeNotifier {
  final firestoreservice = FirestoreService();

  String _id;
  String _nome;
  String _glicemia;
  String _horario;

  var uuid = Uuid();

  //GETTERS AND SETTERS
  String get nome => _nome;
  String get glicemia => _glicemia;
  String get horario => _horario;

  setNome(String nome) {
    _nome = nome;
    notifyListeners();
  }

  setGlicemia(String glicemia) {
    _glicemia = glicemia;
    notifyListeners();
  }

  setHorario(String horario) {
    _horario = horario;
    notifyListeners();
  }

  loadBloodglucose(MeasuredBloodglucose bloodglucose) {
    _nome = bloodglucose.nome;
    _glicemia = bloodglucose.glicemia;
    _horario = bloodglucose.horario;
  }

  saveBloodglucose() {
    //CREATE
    if (_id == null) {
      var novoBloodglucose = MeasuredBloodglucose(
          nome: nome, glicemia: glicemia, horario: horario, id: uuid.v4());
      firestoreservice.saveBloodglucose(novoBloodglucose);
    }
  }

  /*  removeBloodglucose(String bloodglucoseId) {
    firestoreservice.removeBloodglucose(bloodglucoseId);
  } */
}
