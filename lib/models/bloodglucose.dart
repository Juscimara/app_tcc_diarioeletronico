class MeasuredBloodglucoseModel {
  String glicemia;
  String horario;
  DateTime dataAtual;
  String data;

  MeasuredBloodglucoseModel(
      {this.glicemia, this.horario, this.dataAtual, this.data});

  Map<String, dynamic> toMap() {
    return {
      'glicemia': glicemia,
      'horario': horario,
      'dataAtual': dataAtual,
      'data': data
    };
  }

  MeasuredBloodglucoseModel.fromFirestore(Map<String, dynamic> firestoredocument)
      : glicemia = firestoredocument['glicemia'],
        horario = firestoredocument['horario'],
        data = firestoredocument['data'];
}
