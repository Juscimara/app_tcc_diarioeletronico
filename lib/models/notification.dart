class NotificationModel {
  String notificacao;
  String textoNoitificacao;
  String horario;
  String dataAtual;
  String dataFormatada;

  NotificationModel({this.notificacao, this.textoNoitificacao, this.horario, this.dataAtual, this.dataFormatada});
  
  Map<String, dynamic> toMap() {
    return{
      'notificacao': notificacao,
      'textoNoitificacao': textoNoitificacao,
      'horario': horario,
      'data': dataAtual,
      'dataFormatada': dataFormatada
    };
  }
  
  factory NotificationModel.fromFirestore(Map<String, dynamic> firestoreDocument) =>
      NotificationModel(
          notificacao: firestoreDocument['notificacao'],
          textoNoitificacao: firestoreDocument['textoNoitificacao'],
          horario: firestoreDocument['horario'],
          dataAtual: firestoreDocument['data'],
          dataFormatada: firestoreDocument['dataFormatada']);
}