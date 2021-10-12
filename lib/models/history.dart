import 'package:cloud_firestore/cloud_firestore.dart';

class historyModel {
  String alimentos;
  DateTime data;
  String glicemia;

  historyModel({
    this.alimentos,
    this.data,
    this.glicemia,
  });

  Map<String, dynamic> toMap() {
    return {
      'alimento': alimentos,
      'glicemia': glicemia,
      'data': data,
    };
  }

  factory historyModel.fromFirestore(Map<String, dynamic> firestoreDocument) =>
      historyModel(
        alimentos: firestoreDocument['alimentos'],
        glicemia: firestoreDocument['glicemia'],
        data: (firestoreDocument['dataAtual'] as Timestamp).toDate(),
      );
}
