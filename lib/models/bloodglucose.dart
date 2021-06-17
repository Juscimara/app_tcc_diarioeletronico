class MeasuredBloodglucose {
  String id;
  String nome;

  MeasuredBloodglucose(

      {this.id,
       this.nome,
      });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
    };
  }

  MeasuredBloodglucose.fromFirestore(Map<String, dynamic> firestoredocument)
      : id = firestoredocument['id'],
        nome = firestoredocument['nome'];
}
