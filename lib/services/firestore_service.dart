import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/meals.dart';
import 'package:app_tcc_diarioeletronico/models/notification.dart';
import 'package:app_tcc_diarioeletronico/models/users.dart';
import 'package:app_tcc_diarioeletronico/services/auth_service.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirestoreService {
  FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> saveUser(UserData user) {
    return _db.collection('usuarios').doc(user.id).set(
          user.toMap(),
        );
  }

  Future<void> alterUserData(UserData user) {
    String id = AuthService.getCurrentUser().uid;
    _changePassword(user.password);
    return _db
        .collection('usuarios')
        .doc(id)
        .update({'password': user.password});
  }

  void _changePassword(String password) async {
    User user = await FirebaseAuth.instance.currentUser;

    user.updatePassword(password).then((_) {
      print("Senha alterada com sucesso!");
    }).catchError((error) {
      print("Erro na alteração de senha!" + error.toString());
    });
  }

  Future<void> removeUser(UserData user) {
    return _db.collection('usuarios').doc(user.id).delete();
  }

  Future<void> getUserData(UserData user) {
    return _db.collection('usuarios').doc(user.id).get();
  }

  //SALVAR
  Future<void> saveBloodglucose(MeasuredBloodglucoseModel bloodglucose) {
    String id = AuthService.getCurrentUser().uid;
    return _db
        .collection('usuarios')
        .doc(id)
        .collection('glicemia')
        .doc()
        .set(bloodglucose.toMap());
  }

  // Stream<List<MeasuredBloodglucoseModel>> getBloodglucose() {
  //   String id = AuthService.getCurrentUser().uid;
  //   return _db
  //       .collection('usuarios')
  //       .doc(id)
  //       .collection('glicemia')
  //       .snapshots()
  //       .map((snapshot) => snapshot.docs
  //           .map((document) =>
  //               MeasuredBloodglucoseModel.fromFirestore(document.data()))
  //           .toList());
  // }

  /* 
  Future<void> removeBloodglucose(String bloodglucoseId) {
    return _db.collection('glicemia').doc(bloodglucoseId).delete();
  } */

  //Salvar Refeição
  Future<void> saveMeals(MealsModel refeicao) {
    String id = AuthService.getCurrentUser().uid;
    var ref = _db.collection('usuarios').doc(id).collection('refeicao').doc();
    ref.set(refeicao.toMap());
    refeicao.alimentos.map((e) => e.toMap());
    return null;
  }

  //Salvar Notificação
  Future<void> saveNotification(NotificationModel notifications) {
    String id = AuthService.getCurrentUser().uid;
    return _db
        .collection('usuarios')
        .doc(id)
        .collection('notifications')
        .doc()
        .set(notifications.toMap());
  }

  Stream<List<NotificationModel>> getNotifications() {
    String id = AuthService.getCurrentUser().uid;
    return _db
        .collection('usuarios')
        .doc(id)
        .collection('notifications')
        .orderBy('data', descending: true)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map((document) => NotificationModel.fromFirestore(document.data()))
            .toList());
  }
}
