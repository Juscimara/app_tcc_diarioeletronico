class MeasuredBloodglucoseModel {
  String glicemia;
  String horario;
  String dataAtual;

  MeasuredBloodglucoseModel({this.glicemia, this.horario, this.dataAtual});

  Map<String, dynamic> toMap() {
    return{
      'glicemia': glicemia,
      'horario': horario,
      'data': dataAtual
    };
  }
}
