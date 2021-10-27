import 'dart:convert';
import 'package:app_tcc_diarioeletronico/models/bloodglucose.dart';
import 'package:app_tcc_diarioeletronico/models/foodView.dart';
import 'package:app_tcc_diarioeletronico/models/foods.dart';
import 'package:app_tcc_diarioeletronico/models/history.dart';
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
    //String user = await FirebaseAuth.instance.currentUser.email;
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

  Future<UserData> getUserData() {
    String id = AuthService.getCurrentUser().uid;
    return _db
        .collection('usuarios')
        .doc(id)
        .get()
        .then((value) => UserData.fromFirestore(value.data()));
  }

  //Salvar Glicemia
  Future<void> saveBloodglucose(MeasuredBloodglucoseModel bloodglucose) {
    String id = AuthService.getCurrentUser().uid;
    return _db
        .collection('usuarios')
        .doc(id)
        .collection('glicemia')
        .doc()
        .set(bloodglucose.toMap());
  }

  //Salvar Refeição
  Future<void> saveMeals(MealsModel refeicao) {
    String id = AuthService.getCurrentUser().uid;
    var ref = _db.collection('usuarios').doc(id).collection('refeicao').doc();
    ref.set(refeicao.toMap());
    refeicao.alimentos.map((e) => e.toMap());
    return null;
  }

  Future<FoodModel> getMeals() async {
    String id = AuthService.getCurrentUser().uid;

    DateTime data = DateTime.now();
    data = new DateTime(data.year, data.month, data.day);
    DateTime dataNova = DateTime.now();
    dataNova = new DateTime(dataNova.year, dataNova.month, dataNova.day + 1);

    var result = await _db
        .collection('usuarios')
        .doc(id)
        .collection('refeicao')
        .where('dataAtual', isGreaterThanOrEqualTo: data)
        .where('dataAtual', isLessThanOrEqualTo: dataNova)
        .get()
        .then((value) => value.docs.map((e) => e.data()['alimentos']));

    var list = result
        .map((e) => (jsonDecode(e) as List)
            .map((e) => FoodModel.fromFirestoreConvertObject(e)))
        .toList();

    double somaCal = 0, somaCho = 0;

    for (var i = 0; i < list.length; i++) {
      for (var j = 0; j < list[i].length; j++) {
        somaCal += (list[i].toList()[j]).Calorias;
        somaCho += (list[i].toList()[j]).CHO;
      }
    }

    return new FoodModel(CHO: somaCho, Calorias: somaCal);
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
            .map(
              (document) => NotificationModel.fromFirestore(
                document.data(),
              ),
            )
            .toList());
  }

  Future<List<FoodModel>> getHistoryMeals(
      String dataInicial, String dataFinal) async {
    String id = AuthService.getCurrentUser().uid;

    var result = await _db
        .collection('usuarios')
        .doc(id)
        .collection('refeicao')
        .where('data', isGreaterThanOrEqualTo: dataInicial)
        .where('data', isLessThanOrEqualTo: dataFinal)
        .get()
        .then((value) => value.docs.map((e) => e.data()['alimentos']));

    var list = result
        .map((e) => (jsonDecode(e) as List)
            .map((e) => FoodModel.fromFirestoreConvertObject(e)))
        .toList();

    print("=======================================");
    print(result);
    print(list);
    //return list;
  }

  Stream<List<MeasuredBloodglucoseModel>> getHistoryBloodglucose(
      String dataInicial, String dataFinal) {
    String id = AuthService.getCurrentUser().uid;

    return _db
        .collection('usuarios')
        .doc(id)
        .collection('glicemia')
        .where('data', isGreaterThanOrEqualTo: dataInicial)
        .where('data', isLessThanOrEqualTo: dataFinal)
        .snapshots()
        .map((snapshot) => snapshot.docs
            .map(
              (document) => MeasuredBloodglucoseModel.fromFirestore(
                document.data(),
              ),
            )
            .toList());
  }
}
