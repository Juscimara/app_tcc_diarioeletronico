import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/providers/bloodglucose_model.dart';
import 'package:app_tcc_diarioeletronico/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUser(UserData user) {
    return _db.collection('usuarios').doc(user.id).set(
          user.toMap(),
        );
  }

  Future<void> removeUser(UserData user) {
    return _db.collection('usuarios').doc(user.id).delete();
  }

   //SALVAR 
  Future<void> saveBloodglucose(MeasuredBloodglucose bloodglucose) {
    String id = AuthService.getCurrentUser().uid;
    return _db.collection('usuarios').doc(id).collection('glicemia').doc().set(bloodglucose.toMap());
  }

  Stream<List<MeasuredBloodglucose>> getBloodglucose() {
    String id = AuthService.getCurrentUser().uid;
    return _db.collection('usuarios').doc(id)
    .collection('glicemia').snapshots().map((snapshot) => snapshot.docs
        .map((document) => MeasuredBloodglucose.fromFirestore(document.data()))
        .toList());
  }
  /* 
  Future<void> removeBloodglucose(String bloodglucoseId) {
    return _db.collection('morador').doc(bloodglucoseId).delete();
  } */

}
