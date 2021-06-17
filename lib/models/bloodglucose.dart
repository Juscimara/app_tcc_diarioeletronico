class MeasuredBloodglucose {
  String id;
  String nome;
  String glicemia;
  String horario;

  MeasuredBloodglucose(

      {this.id,
       this.nome,
       this.glicemia, 
       this.horario
      });

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "nome": nome,
      "glicemia" : glicemia,
      "horario" : horario
    };
  }

  MeasuredBloodglucose.fromFirestore(Map<String, dynamic> firestoredocument)
      : id = firestoredocument['id'],
        nome = firestoredocument['nome'],
        glicemia = firestoredocument['glicemia'],
        horario = firestoredocument['horario'];
}
