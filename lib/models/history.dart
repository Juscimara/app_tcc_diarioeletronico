class historyModel {
  String alimento;
  DateTime data;
  String glicemia;

  historyModel({
    this.alimento,
    this.data,
    this.glicemia,
  });

  Map<String, dynamic> toMap() {
    return {
      'alimento': alimento,
      'glicemia': glicemia,
      'data': data,
    };
  }

  factory historyModel.fromFirestore(Map<String, dynamic> firestoreDocument) =>
      historyModel(
        alimento: firestoreDocument['alimento'],
        glicemia: firestoreDocument['glicemia'],
        data: firestoreDocument['data'],
      );
}
