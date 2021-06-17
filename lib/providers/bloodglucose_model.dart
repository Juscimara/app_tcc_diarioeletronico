import 'package:app_tcc_diarioeletronico/services/firestore_service.dart';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:flutter/foundation.dart';
import 'package:uuid/uuid.dart';

class Bloodglucose extends ChangeNotifier {
  final firestoreservice = FirestoreService();

  String _id;
  String _nome;
  var uuid = Uuid();

  //GETTERS AND SETTERS
  String get nome => _nome;

  setNome(String nome) {
    _nome = nome;
    notifyListeners();
  }

  loadBloodglucose(MeasuredBloodglucose bloodglucose) {
    _nome = bloodglucose.nome;
  }

  saveBloodglucose() {
    //CREATE
    if (_id == null) {
      var novoBloodglucose = MeasuredBloodglucose(
          nome: nome,
          id: uuid.v4());
      firestoreservice.saveBloodglucose(novoBloodglucose);
    }
  }

 /*  removeBloodglucose(String bloodglucoseId) {
    firestoreservice.removeBloodglucose(bloodglucoseId);
  } */
}
