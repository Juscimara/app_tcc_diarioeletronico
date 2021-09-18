class FoodModel {
  String id;
  String Alimento;
  double CHO;
  double Calorias;
  String MedidaUsual;
  double gOuMl;

  FoodModel(
      {this.id,
      this.Alimento,
      this.CHO,
      this.Calorias,
      this.MedidaUsual,
      this.gOuMl});

  FoodModel.fromFirestore(Map<String, dynamic> firestoredocument)
      : id = firestoredocument['id'],
        Alimento = firestoredocument['Alimento'],
        MedidaUsual = firestoredocument['Medida usual'],
        gOuMl = double.parse(firestoredocument['g ou ml'].toString()),
        CHO = double.parse(firestoredocument['CHO (g)'].toString()),
        Calorias = double.parse(firestoredocument['Calorias'].toString());
}

List<dynamic> JsonAlimentos = [
  {
    "Alimento": "Abacate (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 45,
    "CHO (g)": 3,
    "Calorias": 79
  },
  {
    "Alimento": "Abacaxi",
    "Medida usual": "fatia média",
    "g ou ml": 75,
    "CHO (g)": 10,
    "Calorias": 44
  },
  {
    "Alimento": "Abacaxi em calda",
    "Medida usual": "fatia média",
    "g ou ml": 64,
    "CHO (g)": 19,
    "Calorias": 78
  },
  {
    "Alimento": "Abacaxi, polpa, congelada",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 31
  },
  {
    "Alimento": "Abadejo assado",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 112
  },
  {
    "Alimento": "Abaráv",
    "Medida usual": "unidade média",
    "g ou ml": 170,
    "CHO (g)": 24,
    "Calorias": 414
  },
  {
    "Alimento": "Abiu cru",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 15,
    "Calorias": 62
  },
  {
    "Alimento": "Abobora cabotian, cozida",
    "Medida usual": "colher de sopa",
    "g ou ml": 36,
    "CHO (g)": 3,
    "Calorias": 14
  },
  {
    "Alimento": "Abobora Cabotian, crua",
    "Medida usual": "colher de sopa",
    "g ou ml": 36,
    "CHO (g)": 4,
    "Calorias": 17
  },
  {
    "Alimento": "Abóbora d’água (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 36,
    "CHO (g)": 0,
    "Calorias": 10
  },
  {
    "Alimento": "Abóbora doce (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 36,
    "CHO (g)": 4,
    "Calorias": 18
  },
  {
    "Alimento": "Abóbora moranga (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 36,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Abobrinha recheada",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 6,
    "Calorias": 89
  },
  {
    "Alimento": "Abobrinha, italiana, cozida",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 3
  },
  {
    "Alimento": "Abobrinha, italiana, crua",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Abobrinha, paulista, crua",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 6
  },
  {
    "Alimento": "Abricó-do-pará",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 13,
    "Calorias": 64
  },
  {
    "Alimento": "Açafrão em pó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 12,
    "Calorias": 54
  },
  {
    "Alimento": "Açai natural Frooty ®",
    "Medida usual": "6 colheres de sopa rasas",
    "g ou ml": 60,
    "CHO (g)": 13,
    "Calorias": 62
  },
  {
    "Alimento": "Açaí (polpa) com xarope de guarana e glicose",
    "Medida usual": "taça pequena",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 110
  },
  {
    "Alimento": "Açaí polpa congelada",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 6,
    "Calorias": 58
  },
  {
    "Alimento": "Açaí, suco de",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 72,
    "Calorias": 438
  },
  {
    "Alimento": "Acarajé",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 282
  },
  {
    "Alimento": "Acelga (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 6,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Acém magro cozido",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 215
  },
  {
    "Alimento": "Acerola",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Achocolatado Diet Gold ®",
    "Medida usual": "colher de sopa",
    "g ou ml": 9,
    "CHO (g)": 6,
    "Calorias": 35
  },
  {
    "Alimento": "Achocolatado Diet Linea ®",
    "Medida usual": "colher de sopa",
    "g ou ml": 12,
    "CHO (g)": 5,
    "Calorias": 30
  },
  {
    "Alimento": "Açúcar branco refinado",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 30,
    "Calorias": 116
  },
  {
    "Alimento": "Açúcar cristal",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 24,
    "CHO (g)": 24,
    "Calorias": 96
  },
  {
    "Alimento": "Açúcar mascavo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 19,
    "CHO (g)": 17,
    "Calorias": 70
  },
  {
    "Alimento": "Agrião (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 7,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Agriao refogado",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 1,
    "Calorias": 19
  },
  {
    "Alimento": "Água-de-coco verde",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 10,
    "Calorias": 43
  },
  {
    "Alimento": "Aipim cozido",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 29,
    "Calorias": 120
  },
  {
    "Alimento": "Aipo inteiro (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Alcachofra",
    "Medida usual": "pedaco médio",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Alcaparra",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 27,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Alface, americana, crua",
    "Medida usual": "folha média",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Alface, crespa, crua",
    "Medida usual": "folha média",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Alface, lisa, crua",
    "Medida usual": "folha média",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Alface, roxa, crua",
    "Medida usual": "folha média",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Alfajor ao leite Cacau Show®",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 23,
    "Calorias": 120
  },
  {
    "Alimento": "Alfajor® recheado com doce de leite",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 98
  },
  {
    "Alimento": "Alfavaca crua",
    "Medida usual": "folha média",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 3
  },
  {
    "Alimento": "Algodão Doce",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 30,
    "Calorias": 116
  },
  {
    "Alimento": "Alho, cru",
    "Medida usual": "2 dentes",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 11
  },
  {
    "Alimento": "Alho-poró cru",
    "Medida usual": "porcao pequena",
    "g ou ml": 20,
    "CHO (g)": 3,
    "Calorias": 11
  },
  {
    "Alimento": "Ambrosia",
    "Medida usual": "2 colheres de sopa cheias",
    "g ou ml": 80,
    "CHO (g)": 33,
    "Calorias": 207
  },
  {
    "Alimento": "Ameixa de queijo",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 7,
    "Calorias": 36
  },
  {
    "Alimento": "Ameixa em calda",
    "Medida usual": "01 unidade média",
    "g ou ml": 7,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Ameixa preta fresca",
    "Medida usual": "unidade media",
    "g ou ml": 42,
    "CHO (g)": 4,
    "Calorias": 18
  },
  {
    "Alimento": "Amêndoa",
    "Medida usual": "01 unidade média",
    "g ou ml": 3,
    "CHO (g)": 1,
    "Calorias": 13
  },
  {
    "Alimento": "Amendoim caramelizado",
    "Medida usual": "pacote pequeno",
    "g ou ml": 20,
    "CHO (g)": 14,
    "Calorias": 95
  },
  {
    "Alimento": "Amendoim cozido",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 34,
    "CHO (g)": 7,
    "Calorias": 108
  },
  {
    "Alimento": "Amendoim, grão, cru",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 34,
    "CHO (g)": 5,
    "Calorias": 194
  },
  {
    "Alimento": "Amendoim, torrado, salgado",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 34,
    "CHO (g)": 5,
    "Calorias": 194
  },
  {
    "Alimento": "Amido de arroz",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 17,
    "Calorias": 70
  },
  {
    "Alimento": "Amido de milho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 17,
    "Calorias": 69
  },
  {
    "Alimento": "Amora (branca, preta e vermelha)",
    "Medida usual": "unidade média",
    "g ou ml": 8,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Amora, geléia de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 23,
    "Calorias": 93
  },
  {
    "Alimento": "Angu",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 9,
    "Calorias": 44
  },
  {
    "Alimento": "Angus bacon (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 57,
    "Calorias": 861
  },
  {
    "Alimento": "Angus DeLuxe (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 56,
    "Calorias": 863
  },
  {
    "Alimento": "Antepasto abobrinha escabeche",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 4,
    "Calorias": 57
  },
  {
    "Alimento": "Antepasto alichella",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 106
  },
  {
    "Alimento": "Antepasto berinjela",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 4,
    "Calorias": 88
  },
  {
    "Alimento": "Antepasto sardella",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 5,
    "Calorias": 160
  },
  {
    "Alimento": "Apfelstrudell (folheado de maçã)",
    "Medida usual": "porção grande",
    "g ou ml": 220,
    "CHO (g)": 59,
    "Calorias": 396
  },
  {
    "Alimento": "Apresuntado",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 69
  },
  {
    "Alimento": "Arroz à grega",
    "Medida usual": "colher de servir",
    "g ou ml": 60,
    "CHO (g)": 18,
    "Calorias": 75
  },
  {
    "Alimento": "Arroz à grega",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 7,
    "Calorias": 35
  },
  {
    "Alimento": "Arroz branco cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 5,
    "Calorias": 26
  },
  {
    "Alimento": "Arroz branco cozido",
    "Medida usual": "colher de servir arroz",
    "g ou ml": 45,
    "CHO (g)": 13,
    "Calorias": 58
  },
  {
    "Alimento": "Arroz carreteiro",
    "Medida usual": "colher de servir",
    "g ou ml": 45,
    "CHO (g)": 5,
    "Calorias": 70
  },
  {
    "Alimento": "Arroz com amendoas",
    "Medida usual": "colher de servir",
    "g ou ml": 60,
    "CHO (g)": 18,
    "Calorias": 75
  },
  {
    "Alimento": "Arroz com lentilha",
    "Medida usual": "colher de servir arroz",
    "g ou ml": 45,
    "CHO (g)": 12,
    "Calorias": 71
  },
  {
    "Alimento": "Arroz com lingüiça",
    "Medida usual": "3 colheres de arroz cheias",
    "g ou ml": 180,
    "CHO (g)": 36,
    "Calorias": 349
  },
  {
    "Alimento": "Arroz com pequi",
    "Medida usual": "3 colheres de arroz cheias",
    "g ou ml": 180,
    "CHO (g)": 50,
    "Calorias": 292
  },
  {
    "Alimento": "Arroz integral cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 5,
    "Calorias": 25
  },
  {
    "Alimento": "Arroz selvagem Tio João®",
    "Medida usual": "porção",
    "g ou ml": 50,
    "CHO (g)": 35,
    "Calorias": 170
  },
  {
    "Alimento": "Arroz sírio",
    "Medida usual": "colher de servir arroz",
    "g ou ml": 45,
    "CHO (g)": 13,
    "Calorias": 69
  },
  {
    "Alimento": "Arroz, farinha de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 14,
    "Calorias": 62
  },
  {
    "Alimento": "Arroz, flocos de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 14,
    "CHO (g)": 11,
    "Calorias": 49
  },
  {
    "Alimento": "Arroz-doce",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 13,
    "Calorias": 66
  },
  {
    "Alimento": "Aspargo em conserva",
    "Medida usual": "unidade média",
    "g ou ml": 7,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Ataif",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 13,
    "Calorias": 124
  },
  {
    "Alimento": "Atum em água",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 0,
    "Calorias": 45
  },
  {
    "Alimento": "Aveia em flocos crua",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 10,
    "Calorias": 56
  },
  {
    "Alimento": "Aveia, farinha de (crua)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 18,
    "CHO (g)": 12,
    "Calorias": 71
  },
  {
    "Alimento": "Aveia, flocos cozidos de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 9
  },
  {
    "Alimento": "Avelã",
    "Medida usual": "unidade média",
    "g ou ml": 1,
    "CHO (g)": 0,
    "Calorias": 6
  },
  {
    "Alimento": "Azeite de dendê industrializado",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 8,
    "CHO (g)": 0,
    "Calorias": 71
  },
  {
    "Alimento": "Azeite de oliva (extra)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 8,
    "CHO (g)": 0,
    "Calorias": 72
  },
  {
    "Alimento": "Azeitona preta (parte comest.)",
    "Medida usual": "unidade média",
    "g ou ml": 3,
    "CHO (g)": 0,
    "Calorias": 7
  },
  {
    "Alimento": "Azeitona verde (parte comest.)",
    "Medida usual": "unidade média",
    "g ou ml": 4,
    "CHO (g)": 0,
    "Calorias": 12
  },
  {
    "Alimento": "Baba de moça",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 27,
    "Calorias": 150
  },
  {
    "Alimento": "Babaganuche",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 6,
    "Calorias": 84
  },
  {
    "Alimento": "Bacalhoada",
    "Medida usual": "colher de sopa",
    "g ou ml": 30,
    "CHO (g)": 2,
    "Calorias": 51
  },
  {
    "Alimento": "Bacallhau cozido",
    "Medida usual": "escumadeira média",
    "g ou ml": 60,
    "CHO (g)": 0,
    "Calorias": 88
  },
  {
    "Alimento": "Bacon",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 99
  },
  {
    "Alimento": "Bacon (Baked Potato®)",
    "Medida usual": "concha",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 92
  },
  {
    "Alimento": "Bacuri",
    "Medida usual": "polpa de 1 fruto médio",
    "g ou ml": 90,
    "CHO (g)": 0,
    "Calorias": 870
  },
  {
    "Alimento": "Baguete congelada Qualita®",
    "Medida usual": "unidade pequena",
    "g ou ml": 50,
    "CHO (g)": 25,
    "Calorias": 124
  },
  {
    "Alimento": "Baião de dois",
    "Medida usual": "escumadeira cheia",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 136
  },
  {
    "Alimento": "Bala de banana",
    "Medida usual": "3 unidades",
    "g ou ml": 50,
    "CHO (g)": 12,
    "Calorias": 46
  },
  {
    "Alimento": "Bala de caramelo Embare®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 5,
    "Calorias": 27
  },
  {
    "Alimento": "Bala de coco (industrializada)",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Bala de coco (industrializada) Junco®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Bala de goma",
    "Medida usual": "unidade",
    "g ou ml": 3,
    "CHO (g)": 3,
    "Calorias": 11
  },
  {
    "Alimento": "Bala de mel Arcor®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 6,
    "Calorias": 22
  },
  {
    "Alimento": "Bala Delícia®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Bala Halls®",
    "Medida usual": "unidade",
    "g ou ml": 3,
    "CHO (g)": 3,
    "Calorias": 13
  },
  {
    "Alimento": "Bala Jujuba",
    "Medida usual": "unidade",
    "g ou ml": 3,
    "CHO (g)": 3,
    "Calorias": 12
  },
  {
    "Alimento": "Bala macia",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Bala Toffe® Chocolate",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 22,
    "Calorias": 151
  },
  {
    "Alimento": "Bambu, brotos de",
    "Medida usual": "pires de chá",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 3
  },
  {
    "Alimento": "Banana à milanesa",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 24,
    "Calorias": 185
  },
  {
    "Alimento": "Banana caramelada",
    "Medida usual": "unidade média",
    "g ou ml": 50,
    "CHO (g)": 29,
    "Calorias": 114
  },
  {
    "Alimento": "Banana frita da terra",
    "Medida usual": "fatia media",
    "g ou ml": 31,
    "CHO (g)": 10,
    "Calorias": 68
  },
  {
    "Alimento": "Banana pacova madura cozida sem casca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 12,
    "Calorias": 48
  },
  {
    "Alimento": "Banana pacova madura frita (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 18,
    "Calorias": 96
  },
  {
    "Alimento": "Banana pacova madura in natura (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 11,
    "Calorias": 45
  },
  {
    "Alimento": "Banana pacova verde frita",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 30,
    "Calorias": 138
  },
  {
    "Alimento": "Banana-caturra ou Nanica",
    "Medida usual": "unidade média",
    "g ou ml": 86,
    "CHO (g)": 20,
    "Calorias": 79
  },
  {
    "Alimento": "Bananada",
    "Medida usual": "unidade media",
    "g ou ml": 40,
    "CHO (g)": 27,
    "Calorias": 115
  },
  {
    "Alimento": "Banana-da-terra crua",
    "Medida usual": "unidade grande",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 117
  },
  {
    "Alimento": "Banana-maçã",
    "Medida usual": "unidade média",
    "g ou ml": 65,
    "CHO (g)": 15,
    "Calorias": 72
  },
  {
    "Alimento": "Banana-ouro",
    "Medida usual": "unidade pequena",
    "g ou ml": 40,
    "CHO (g)": 9,
    "Calorias": 42
  },
  {
    "Alimento": "Banana-prata crua",
    "Medida usual": "unidade média",
    "g ou ml": 50,
    "CHO (g)": 13,
    "Calorias": 49
  },
  {
    "Alimento": "Banha de porco",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 90
  },
  {
    "Alimento": "Barra de Cereal Diet Linea® Avela, Castanha e",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 17,
    "Calorias": 75
  },
  {
    "Alimento": "Barra de cereal Diet Linea® banana com aveia",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 18,
    "Calorias": 65
  },
  {
    "Alimento": "Batata (Baked Potato®)",
    "Medida usual": "unidade",
    "g ou ml": 470,
    "CHO (g)": 83,
    "Calorias": 369
  },
  {
    "Alimento": "Batata doce frita",
    "Medida usual": "fatia media",
    "g ou ml": 65,
    "CHO (g)": 39,
    "Calorias": 249
  },
  {
    "Alimento": "Batata frita (Bob’s®)",
    "Medida usual": "porção grande",
    "g ou ml": 115,
    "CHO (g)": 41,
    "Calorias": 259
  },
  {
    "Alimento": "Batata frita (Bob’s®)",
    "Medida usual": "porção média",
    "g ou ml": 95,
    "CHO (g)": 34,
    "Calorias": 214
  },
  {
    "Alimento": "Batata frita (Bob’s®)",
    "Medida usual": "porção pequena",
    "g ou ml": 55,
    "CHO (g)": 20,
    "Calorias": 124
  },
  {
    "Alimento": "Batata frita (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 37,
    "Calorias": 318
  },
  {
    "Alimento": "Batata frita (Habib’s®)",
    "Medida usual": "porção pequena",
    "g ou ml": 40,
    "CHO (g)": 10,
    "Calorias": 86
  },
  {
    "Alimento": "Batata frita chips",
    "Medida usual": "punhado",
    "g ou ml": 13,
    "CHO (g)": 6,
    "Calorias": 70
  },
  {
    "Alimento": "Batata fritas (Mc’ Donalds®)",
    "Medida usual": "porção pequena",
    "g ou ml": 0,
    "CHO (g)": 25,
    "Calorias": 206
  },
  {
    "Alimento": "Batata fritas (Mc’ Donalds®)",
    "Medida usual": "porção média",
    "g ou ml": 0,
    "CHO (g)": 35,
    "Calorias": 288
  },
  {
    "Alimento": "Batata fritas (Mc’ Donalds®)",
    "Medida usual": "porção grande",
    "g ou ml": 0,
    "CHO (g)": 49,
    "Calorias": 412
  },
  {
    "Alimento": "Batata fritas McFritas Kids (Mc’ Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 11,
    "Calorias": 87
  },
  {
    "Alimento": "Batata inglesa cozida",
    "Medida usual": "picada",
    "g ou ml": 80,
    "CHO (g)": 6,
    "Calorias": 68
  },
  {
    "Alimento": "Batata inglesa fritta®",
    "Medida usual": "escumadeira media cheia",
    "g ou ml": 65,
    "CHO (g)": 23,
    "Calorias": 182
  },
  {
    "Alimento": "Batata inglesa Saute®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 4,
    "Calorias": 37
  },
  {
    "Alimento": "Batata smiles Mccain®",
    "Medida usual": "01 unidade",
    "g ou ml": 21,
    "CHO (g)": 7,
    "Calorias": 42
  },
  {
    "Alimento": "Batata, amido de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 13,
    "Calorias": 53
  },
  {
    "Alimento": "Batata, fécula de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 16,
    "Calorias": 66
  },
  {
    "Alimento": "Batata-baroa ou mandioquinha (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 10,
    "Calorias": 44
  },
  {
    "Alimento": "Batata-doce amarela assada (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 10,
    "Calorias": 43
  },
  {
    "Alimento": "Batata-doce branca cozida (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 8,
    "Calorias": 38
  },
  {
    "Alimento": "Batata-doce cozida",
    "Medida usual": "colher sopa cheia",
    "g ou ml": 42,
    "CHO (g)": 10,
    "Calorias": 43
  },
  {
    "Alimento": "Batata-doce, doce de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 24,
    "Calorias": 94
  },
  {
    "Alimento": "Baton (chocolate ao leite Garoto®)",
    "Medida usual": "unidade",
    "g ou ml": 16,
    "CHO (g)": 9,
    "Calorias": 86
  },
  {
    "Alimento": "Beijinho",
    "Medida usual": "unidade média",
    "g ou ml": 25,
    "CHO (g)": 11,
    "Calorias": 105
  },
  {
    "Alimento": "Beijinho",
    "Medida usual": "unidade pequena",
    "g ou ml": 6,
    "CHO (g)": 3,
    "Calorias": 25
  },
  {
    "Alimento": "Beijinho diet",
    "Medida usual": "unidade pequena",
    "g ou ml": 6,
    "CHO (g)": 2,
    "Calorias": 20
  },
  {
    "Alimento": "Beijinho-de-coco Nestle®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 63
  },
  {
    "Alimento": "Beiju",
    "Medida usual": "unidade media",
    "g ou ml": 100,
    "CHO (g)": 87,
    "Calorias": 359
  },
  {
    "Alimento": "Beiju com Coco",
    "Medida usual": "unidade grande",
    "g ou ml": 125,
    "CHO (g)": 77,
    "Calorias": 622
  },
  {
    "Alimento": "Beiju de queijo com manteiga",
    "Medida usual": "unidade média",
    "g ou ml": 150,
    "CHO (g)": 87,
    "Calorias": 518
  },
  {
    "Alimento": "Beirute Habib’s®",
    "Medida usual": "unidade",
    "g ou ml": 415,
    "CHO (g)": 51,
    "Calorias": 714
  },
  {
    "Alimento": "Bekleua",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 290
  },
  {
    "Alimento": "Bem casado",
    "Medida usual": "01 unidade",
    "g ou ml": 40,
    "CHO (g)": 25,
    "Calorias": 160
  },
  {
    "Alimento": "Bergamota ou Mexerica",
    "Medida usual": "unidade grande",
    "g ou ml": 100,
    "CHO (g)": 15,
    "Calorias": 58
  },
  {
    "Alimento": "Berinjela cozida sem sal",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Berinjela frita",
    "Medida usual": "rodela média",
    "g ou ml": 13,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Beterraba cozida (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 9
  },
  {
    "Alimento": "Beterraba crua",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Bib’s dog (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 105,
    "CHO (g)": 21,
    "Calorias": 246
  },
  {
    "Alimento": "Bib’s salad (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 300,
    "CHO (g)": 36,
    "Calorias": 209
  },
  {
    "Alimento": "Bife à milanesa",
    "Medida usual": "unidade pequena",
    "g ou ml": 80,
    "CHO (g)": 8,
    "Calorias": 230
  },
  {
    "Alimento": "Bife de boi",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 228
  },
  {
    "Alimento": "Bife de fígado",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 6,
    "Calorias": 216
  },
  {
    "Alimento": "Bife Role",
    "Medida usual": "unidade grande",
    "g ou ml": 150,
    "CHO (g)": 4,
    "Calorias": 268
  },
  {
    "Alimento": "Big Bob picanha 100g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 235,
    "CHO (g)": 35,
    "Calorias": 513
  },
  {
    "Alimento": "Big Bob picanha 200g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 344,
    "CHO (g)": 38,
    "Calorias": 728
  },
  {
    "Alimento": "Big king (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 31,
    "Calorias": 555
  },
  {
    "Alimento": "Big tasty (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 43,
    "Calorias": 841
  },
  {
    "Alimento": "Biscoito de água e sal",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 34
  },
  {
    "Alimento": "Biscoito de aveia e mel Nestle®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 4,
    "Calorias": 26
  },
  {
    "Alimento": "Biscoito de polvilho (rosquinha)",
    "Medida usual": "unidade",
    "g ou ml": 3,
    "CHO (g)": 2,
    "Calorias": 13
  },
  {
    "Alimento": "Biscoito de queijo",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 6,
    "Calorias": 51
  },
  {
    "Alimento": "Biscoito leite Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 38
  },
  {
    "Alimento": "Biscoito maisena Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 22
  },
  {
    "Alimento": "Biscoito maria Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 4,
    "Calorias": 26
  },
  {
    "Alimento": "Biscoito milho verde Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 4,
    "Calorias": 27
  },
  {
    "Alimento": "Biscoito passatempo® sem recheio",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 4,
    "Calorias": 22
  },
  {
    "Alimento": "Biscoito prestígio recheado São Luiz Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 10,
    "Calorias": 71
  },
  {
    "Alimento": "Biscoito prestígio® wafer Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 43
  },
  {
    "Alimento": "Biscoito recheado chocolate",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 9,
    "Calorias": 62
  },
  {
    "Alimento": "Biscoito salclic aperitivo São Luiz Nestle®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 3,
    "Calorias": 24
  },
  {
    "Alimento": "Biscoito salgado integral gergelim Piraquê®",
    "Medida usual": "unidade",
    "g ou ml": 7.5,
    "CHO (g)": 5,
    "Calorias": 38
  },
  {
    "Alimento": "Biscoito suíço creme de avelã São Luiz Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 7,
    "Calorias": 73
  },
  {
    "Alimento": "Biscoito tipo cookies Baunilha Toddy®",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 46
  },
  {
    "Alimento": "Biscoito tostines cream cracker São Luiz Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 37
  },
  {
    "Alimento": "Biscoito tostines® leite",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 6,
    "Calorias": 37
  },
  {
    "Alimento": "Biscoito tostines® recheado Chocolate",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 9,
    "Calorias": 64
  },
  {
    "Alimento": "Biscoito tostines® surpresa fun",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 6,
    "Calorias": 37
  },
  {
    "Alimento": "Biscoito tostines® wafer chocolate",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 42
  },
  {
    "Alimento": "Biscoitos de farinha integral",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 7,
    "Calorias": 40
  },
  {
    "Alimento": "Biscoitos de glúten a 40%",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 29
  },
  {
    "Alimento": "Biscoitos de glúten puro",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 8,
    "Calorias": 35
  },
  {
    "Alimento": "Bisnaguinha Seven Boys®",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 62
  },
  {
    "Alimento": "BKTM batata suprema (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 59,
    "Calorias": 604
  },
  {
    "Alimento": "BKTM cheddar duplo (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 54,
    "Calorias": 660
  },
  {
    "Alimento": "BKTM chicken crisp (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 68,
    "Calorias": 667
  },
  {
    "Alimento": "BKTM chicken crisp furioso (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 80,
    "Calorias": 930
  },
  {
    "Alimento": "BKTM chicken sandwich (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 53,
    "Calorias": 609
  },
  {
    "Alimento": "BKTM fish (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 63,
    "Calorias": 573
  },
  {
    "Alimento": "BKTM grilled chicken (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 56,
    "Calorias": 508
  },
  {
    "Alimento": "BKTM nuggets (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 12,
    "Calorias": 148
  },
  {
    "Alimento": "BKTM pepperoni (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 30,
    "Calorias": 270
  },
  {
    "Alimento": "BKTM picanha (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 53,
    "Calorias": 922
  },
  {
    "Alimento": "BKTM stacker triplo com bacon (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 35,
    "Calorias": 1529
  },
  {
    "Alimento": "Blis Frutas Vermelhas",
    "Medida usual": "unidade",
    "g ou ml": 180,
    "CHO (g)": 29,
    "Calorias": 158
  },
  {
    "Alimento": "Bliss morango",
    "Medida usual": "unidade",
    "g ou ml": 200,
    "CHO (g)": 31,
    "Calorias": 168
  },
  {
    "Alimento": "Bob’s crispy (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 251,
    "CHO (g)": 48,
    "Calorias": 641
  },
  {
    "Alimento": "Bob’s picanha gourmet 100g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 258,
    "CHO (g)": 35,
    "Calorias": 480
  },
  {
    "Alimento": "Bob’s picanha gourmet 200g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 373,
    "CHO (g)": 36,
    "Calorias": 727
  },
  {
    "Alimento": "Bolacha de nata Panco®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 22
  },
  {
    "Alimento": "Bolacha sabor mais morango Trakinas®",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 8,
    "Calorias": 61
  },
  {
    "Alimento": "Bolinha de queijo",
    "Medida usual": "unidade pequena",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 27
  },
  {
    "Alimento": "Bolinho de aipim com carne seca",
    "Medida usual": "unidade média",
    "g ou ml": 45,
    "CHO (g)": 12,
    "Calorias": 86
  },
  {
    "Alimento": "Bolinho de arroz",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 20,
    "Calorias": 164
  },
  {
    "Alimento": "Bolinho de bacalhau",
    "Medida usual": "unidade media",
    "g ou ml": 15,
    "CHO (g)": 3,
    "Calorias": 42
  },
  {
    "Alimento": "Bolinho de bacalhau (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 5,
    "Calorias": 87
  },
  {
    "Alimento": "Bolinho de carne",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 8,
    "Calorias": 67
  },
  {
    "Alimento": "Bolinho de chuva",
    "Medida usual": "unidade pequena",
    "g ou ml": 30,
    "CHO (g)": 13,
    "Calorias": 81
  },
  {
    "Alimento": "Bolinho de estudante (Bolinho Ana Maria®)",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 49,
    "Calorias": 292
  },
  {
    "Alimento": "Bolinho de Presunto e Queijo",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 12,
    "Calorias": 73
  },
  {
    "Alimento": "Bolinho de soja tipo salsicha 350g (Ta’amti) -",
    "Medida usual": "4 unidades",
    "g ou ml": 90,
    "CHO (g)": 28,
    "Calorias": 232
  },
  {
    "Alimento": "Bolo alemão",
    "Medida usual": "fatia",
    "g ou ml": 60,
    "CHO (g)": 30,
    "Calorias": 227
  },
  {
    "Alimento": "Bolo branco simples",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 55,
    "Calorias": 318
  },
  {
    "Alimento": "Bolo de aipim com coco",
    "Medida usual": "fatia media",
    "g ou ml": 80,
    "CHO (g)": 37,
    "Calorias": 243
  },
  {
    "Alimento": "Bolo de arroz",
    "Medida usual": "fatia média",
    "g ou ml": 70,
    "CHO (g)": 39,
    "Calorias": 197
  },
  {
    "Alimento": "Bolo de banana",
    "Medida usual": "fatia média",
    "g ou ml": 70,
    "CHO (g)": 33,
    "Calorias": 211
  },
  {
    "Alimento": "Bolo de batata-doce",
    "Medida usual": "fatia média",
    "g ou ml": 90,
    "CHO (g)": 43,
    "Calorias": 292
  },
  {
    "Alimento": "Bolo de Brigadeiro",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 20,
    "Calorias": 147
  },
  {
    "Alimento": "Bolo de brigadeiro (festa) Amor aos Pedaços®",
    "Medida usual": "fatia pequena",
    "g ou ml": 60,
    "CHO (g)": 33,
    "Calorias": 211
  },
  {
    "Alimento": "Bolo de casamento",
    "Medida usual": "01 fatia pequena",
    "g ou ml": 75,
    "CHO (g)": 42,
    "Calorias": 285
  },
  {
    "Alimento": "Bolo de cenoura",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 38,
    "Calorias": 227
  },
  {
    "Alimento": "Bolo de cenoura com chocolate Dr. Otcker®",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 38,
    "Calorias": 227
  },
  {
    "Alimento": "Bolo de chocolate (recheio/cobertura)",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 54,
    "Calorias": 320
  },
  {
    "Alimento": "Bolo de Chocolate e Nozes",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 17,
    "Calorias": 175
  },
  {
    "Alimento": "Bolo de chocolate sem glacê",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 34,
    "Calorias": 306
  },
  {
    "Alimento": "Bolo de festa (recheio/cobertura)",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 54,
    "Calorias": 320
  },
  {
    "Alimento": "Bolo de festa diet (recheio/cobertura)",
    "Medida usual": "fatia média",
    "g ou ml": 80,
    "CHO (g)": 20,
    "Calorias": 220
  },
  {
    "Alimento": "Bolo de fubá",
    "Medida usual": "fatia média",
    "g ou ml": 50,
    "CHO (g)": 20,
    "Calorias": 160
  },
  {
    "Alimento": "Bolo de limão",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 37,
    "Calorias": 233
  },
  {
    "Alimento": "Bolo de mandioca (aipim)",
    "Medida usual": "pedaço grande",
    "g ou ml": 100,
    "CHO (g)": 48,
    "Calorias": 324
  },
  {
    "Alimento": "Bolo de milho",
    "Medida usual": "fatia",
    "g ou ml": 100,
    "CHO (g)": 54,
    "Calorias": 290
  },
  {
    "Alimento": "Bolo de nozes",
    "Medida usual": "fatia média",
    "g ou ml": 50,
    "CHO (g)": 28,
    "Calorias": 200
  },
  {
    "Alimento": "Bolo Floresta Negra com Morango",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 10,
    "Calorias": 106
  },
  {
    "Alimento": "Bolo Merengue",
    "Medida usual": "fatia peqquena",
    "g ou ml": 50,
    "CHO (g)": 11,
    "Calorias": 116
  },
  {
    "Alimento": "Bolo Mousse de Chocolate",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 20,
    "Calorias": 173
  },
  {
    "Alimento": "Bolo mousse de chocolate Amor aos Pedaços®",
    "Medida usual": "fatia pequena",
    "g ou ml": 60,
    "CHO (g)": 23,
    "Calorias": 185
  },
  {
    "Alimento": "Bolo simples",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 33,
    "Calorias": 263
  },
  {
    "Alimento": "Bombom Alpino",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 8,
    "Calorias": 70
  },
  {
    "Alimento": "Bombom banana Caribe Garoto®",
    "Medida usual": "unidade",
    "g ou ml": 17,
    "CHO (g)": 12,
    "Calorias": 65
  },
  {
    "Alimento": "Bombom bopinho de torrone",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 54
  },
  {
    "Alimento": "Bombom charge Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 24,
    "Calorias": 187
  },
  {
    "Alimento": "Bombom Copinho de Torrone",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 54
  },
  {
    "Alimento": "Bombom de Brigadeiro",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 48
  },
  {
    "Alimento": "Bombom diet Cacau Show®",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 7,
    "Calorias": 56
  },
  {
    "Alimento": "Bombom Ferrero Rocher®",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 6,
    "Calorias": 72
  },
  {
    "Alimento": "Bombom It coco Garoto®",
    "Medida usual": "unidade",
    "g ou ml": 17,
    "CHO (g)": 11,
    "Calorias": 80
  },
  {
    "Alimento": "Bombom Ouro Branco®",
    "Medida usual": "unidade",
    "g ou ml": 22,
    "CHO (g)": 13,
    "Calorias": 117
  },
  {
    "Alimento": "Bombom prestígio Nestle®",
    "Medida usual": "unidade",
    "g ou ml": 33,
    "CHO (g)": 21,
    "Calorias": 154
  },
  {
    "Alimento": "Bombom Sonho de Valsa®",
    "Medida usual": "unidade",
    "g ou ml": 22,
    "CHO (g)": 13,
    "Calorias": 113
  },
  {
    "Alimento": "Bombom Trufa de Cereja",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 45
  },
  {
    "Alimento": "Bombom truffa de creme de cereja Cacau Show®",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 12,
    "Calorias": 123
  },
  {
    "Alimento": "Brezel (Pretzel)",
    "Medida usual": "17 unidades pequenos",
    "g ou ml": 28,
    "CHO (g)": 23,
    "Calorias": 110
  },
  {
    "Alimento": "Brigadeiro",
    "Medida usual": "01 unidade médio",
    "g ou ml": 30,
    "CHO (g)": 16,
    "Calorias": 103
  },
  {
    "Alimento": "Brigadeiro de Flocos",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 9,
    "Calorias": 60
  },
  {
    "Alimento": "Brigadeiro de Morango",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 9,
    "Calorias": 60
  },
  {
    "Alimento": "Broa de Milho",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 25,
    "Calorias": 128
  },
  {
    "Alimento": "Brócolis com cottage (Baked Potato®)",
    "Medida usual": "concha",
    "g ou ml": 80,
    "CHO (g)": 3,
    "Calorias": 31
  },
  {
    "Alimento": "Brócolis cozido (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 4
  },
  {
    "Alimento": "Cacau em pó Mae Terra®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 31
  },
  {
    "Alimento": "Cachorro-quente (média)",
    "Medida usual": "unidade",
    "g ou ml": 125,
    "CHO (g)": 31,
    "Calorias": 330
  },
  {
    "Alimento": "Café com leite sem açúcar",
    "Medida usual": "xícara de chá cheia",
    "g ou ml": 200,
    "CHO (g)": 7,
    "Calorias": 88
  },
  {
    "Alimento": "Café infusão 10%",
    "Medida usual": "xicara de café",
    "g ou ml": 50,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Café solúvel pó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 4,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Caipirinha sem açúcar",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 54,
    "Calorias": 436
  },
  {
    "Alimento": "Cajá manga",
    "Medida usual": "unidade grande",
    "g ou ml": 75,
    "CHO (g)": 9,
    "Calorias": 38
  },
  {
    "Alimento": "Cajá polpa congelada",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 46
  },
  {
    "Alimento": "Cajá-umbu",
    "Medida usual": "unidade media",
    "g ou ml": 22,
    "CHO (g)": 2,
    "Calorias": 10
  },
  {
    "Alimento": "Cajú",
    "Medida usual": "unidade grande",
    "g ou ml": 100,
    "CHO (g)": 10,
    "Calorias": 43
  },
  {
    "Alimento": "Caju polpa congelada",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 46
  },
  {
    "Alimento": "Caju, suco concentrado",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 25,
    "Calorias": 108
  },
  {
    "Alimento": "Cajuzinho",
    "Medida usual": "unidade pequena",
    "g ou ml": 12,
    "CHO (g)": 6,
    "Calorias": 44
  },
  {
    "Alimento": "Calda de chocolate",
    "Medida usual": "colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 31
  },
  {
    "Alimento": "Caldo de carne Knorr®",
    "Medida usual": "unidade",
    "g ou ml": 9,
    "CHO (g)": 2,
    "Calorias": 24
  },
  {
    "Alimento": "Caldo de galinha Knorr®",
    "Medida usual": "unidade",
    "g ou ml": 9,
    "CHO (g)": 1,
    "Calorias": 24
  },
  {
    "Alimento": "Caldo verde",
    "Medida usual": "concha média cheia",
    "g ou ml": 130,
    "CHO (g)": 7,
    "Calorias": 79
  },
  {
    "Alimento": "Caldo-de-cana",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 49,
    "Calorias": 201
  },
  {
    "Alimento": "Camarão (Baked Potato®)",
    "Medida usual": "concha",
    "g ou ml": 90,
    "CHO (g)": 0,
    "Calorias": 42
  },
  {
    "Alimento": "Camarão cozido",
    "Medida usual": "unidade grande",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 27
  },
  {
    "Alimento": "Camarão cozido",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 18
  },
  {
    "Alimento": "Camarão frito",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 37
  },
  {
    "Alimento": "Camarão grande cru",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 25
  },
  {
    "Alimento": "Camembert (Baked Potato®)",
    "Medida usual": "4 fatias",
    "g ou ml": 60,
    "CHO (g)": 0,
    "Calorias": 188
  },
  {
    "Alimento": "Camu-camu",
    "Medida usual": "6 unidades",
    "g ou ml": 48,
    "CHO (g)": 3,
    "Calorias": 15
  },
  {
    "Alimento": "Canapé de capaccio",
    "Medida usual": "01 torrada",
    "g ou ml": 3,
    "CHO (g)": 2,
    "Calorias": 20
  },
  {
    "Alimento": "Canela em pau Kitano®",
    "Medida usual": "unidade",
    "g ou ml": 2,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Canelone de frango",
    "Medida usual": "unidade média",
    "g ou ml": 45,
    "CHO (g)": 9,
    "Calorias": 87
  },
  {
    "Alimento": "Canelone de ricota",
    "Medida usual": "unidade média",
    "g ou ml": 30,
    "CHO (g)": 7,
    "Calorias": 74
  },
  {
    "Alimento": "Canja de galinha",
    "Medida usual": "concha média cheia",
    "g ou ml": 130,
    "CHO (g)": 12,
    "Calorias": 110
  },
  {
    "Alimento": "Canjica pronta",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 29
  },
  {
    "Alimento": "Capelete de carne Frescarini®",
    "Medida usual": "escumadeira",
    "g ou ml": 50,
    "CHO (g)": 26,
    "Calorias": 141
  },
  {
    "Alimento": "Capelete de frango Frescarini®",
    "Medida usual": "escumadeira",
    "g ou ml": 50,
    "CHO (g)": 26,
    "Calorias": 140
  },
  {
    "Alimento": "Cappuccino classic 3 corações® po",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 20,
    "CHO (g)": 14,
    "Calorias": 84
  },
  {
    "Alimento": "Cappuccino classic diet 3 corações® pó",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 14,
    "CHO (g)": 6,
    "Calorias": 66
  },
  {
    "Alimento": "Caqui",
    "Medida usual": "unidade média",
    "g ou ml": 110,
    "CHO (g)": 22,
    "Calorias": 95
  },
  {
    "Alimento": "Cará cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 7,
    "Calorias": 28
  },
  {
    "Alimento": "Carambola",
    "Medida usual": "unidade grande",
    "g ou ml": 100,
    "CHO (g)": 11,
    "Calorias": 46
  },
  {
    "Alimento": "Caranguejo cozido",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 83
  },
  {
    "Alimento": "Carne assada",
    "Medida usual": "pedaco medio",
    "g ou ml": 90,
    "CHO (g)": 0,
    "Calorias": 259
  },
  {
    "Alimento": "Carne bovina, acem, moído, cru",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 49
  },
  {
    "Alimento": "Carne bovina, costela assada",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 373
  },
  {
    "Alimento": "Carne bovina, picanha, com gordura, grelhada",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 289
  },
  {
    "Alimento": "Carne com chilli (Baked Potato®)",
    "Medida usual": "concha",
    "g ou ml": 65,
    "CHO (g)": 28,
    "Calorias": 98
  },
  {
    "Alimento": "Carne de bezerro",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 115
  },
  {
    "Alimento": "Carne de boi moída",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 49
  },
  {
    "Alimento": "Carne de boi, lagarto cozido",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 222
  },
  {
    "Alimento": "Carne de boi, maminha",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 199
  },
  {
    "Alimento": "Carne de boi, paleta",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 307
  },
  {
    "Alimento": "Carne de boi, paleta cozida",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 194
  },
  {
    "Alimento": "Carne de boi, picanha (Friboi®)",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 1.9,
    "Calorias": 323
  },
  {
    "Alimento": "Carne de cabrito magra",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 179
  },
  {
    "Alimento": "Carne de cordeiro magra",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 162
  },
  {
    "Alimento": "Carne de porco, lombo assado",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 210
  },
  {
    "Alimento": "Carne de vaca, maminha",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 159
  },
  {
    "Alimento": "Carne ensopada com legumes",
    "Medida usual": "colher sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 3,
    "Calorias": 57
  },
  {
    "Alimento": "Carne vegetal (de soja)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 29
  },
  {
    "Alimento": "Carpa assada",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 110
  },
  {
    "Alimento": "Carpaccio de Haddock",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 17
  },
  {
    "Alimento": "Carpaccio de salmão",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 21
  },
  {
    "Alimento": "Caruru (hortaliça crua picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 9
  },
  {
    "Alimento": "Caruru (prato baiano)",
    "Medida usual": "colher de sopa",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 64
  },
  {
    "Alimento": "Casquinha de siri",
    "Medida usual": "unidade",
    "g ou ml": 55,
    "CHO (g)": 1,
    "Calorias": 92
  },
  {
    "Alimento": "Castanha de caju",
    "Medida usual": "01 unidade média",
    "g ou ml": 3,
    "CHO (g)": 1,
    "Calorias": 13
  },
  {
    "Alimento": "Castanha de pequi",
    "Medida usual": "unidade média",
    "g ou ml": 14,
    "CHO (g)": 3,
    "Calorias": 12
  },
  {
    "Alimento": "Castanha do pará",
    "Medida usual": "01 unidade média",
    "g ou ml": 6,
    "CHO (g)": 1,
    "Calorias": 42
  },
  {
    "Alimento": "Castanha portuguesa",
    "Medida usual": "01 unidade",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 21
  },
  {
    "Alimento": "Catchup",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 4,
    "Calorias": 15
  },
  {
    "Alimento": "Catupiry",
    "Medida usual": "fatia média",
    "g ou ml": 35,
    "CHO (g)": 0,
    "Calorias": 88
  },
  {
    "Alimento": "CBO (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 56,
    "Calorias": 665
  },
  {
    "Alimento": "Cebola picada",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Cebolinha crua (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 8,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Cenoura cozida",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Cenoura crua ralada",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Cenouritas (Mc’ Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 70,
    "CHO (g)": 3,
    "Calorias": 18
  },
  {
    "Alimento": "Centeio, farinha clara de",
    "Medida usual": "xícara",
    "g ou ml": 102,
    "CHO (g)": 79,
    "Calorias": 355
  },
  {
    "Alimento": "Cereal barra Nestlé® banana, aveia e mel",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 64
  },
  {
    "Alimento": "Cereal barra Nutry® coco com chocolate",
    "Medida usual": "unidade",
    "g ou ml": 22,
    "CHO (g)": 16,
    "Calorias": 90
  },
  {
    "Alimento": "Cereal barra Trio® light morango com chocolate",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 15,
    "Calorias": 78
  },
  {
    "Alimento": "Cereal de arroz e milho Nestlé®",
    "Medida usual": "colher de sopa",
    "g ou ml": 7,
    "CHO (g)": 6,
    "Calorias": 27
  },
  {
    "Alimento": "Cereal infantil 3 cereais Nestlé®",
    "Medida usual": "colher de sopa",
    "g ou ml": 7,
    "CHO (g)": 5,
    "Calorias": 29
  },
  {
    "Alimento": "Cereal infantil 3 frutas Nestlé®",
    "Medida usual": "colher de sopa",
    "g ou ml": 7,
    "CHO (g)": 6,
    "Calorias": 27
  },
  {
    "Alimento": "Cereal matinal chocokrispis Kellogg’s®",
    "Medida usual": "3/4 de xícara",
    "g ou ml": 30,
    "CHO (g)": 25,
    "Calorias": 110
  },
  {
    "Alimento": "Cereal matinal all bran Kellogg’s®",
    "Medida usual": "3/4 de xícara",
    "g ou ml": 40,
    "CHO (g)": 18,
    "Calorias": 108
  },
  {
    "Alimento": "Cereal matinal corn flakes Kellogg’s®",
    "Medida usual": "1 xícara",
    "g ou ml": 30,
    "CHO (g)": 24,
    "Calorias": 108
  },
  {
    "Alimento": "Cereal matinal crunch Nestlé®",
    "Medida usual": "3/4 xícara",
    "g ou ml": 30,
    "CHO (g)": 23,
    "Calorias": 120
  },
  {
    "Alimento": "Cereal matinal Kellness® granola tradicional",
    "Medida usual": "1/2 xícara",
    "g ou ml": 40,
    "CHO (g)": 27,
    "Calorias": 147
  },
  {
    "Alimento": "Cereja em conserva",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Cereja fresca",
    "Medida usual": "unidade",
    "g ou ml": 4,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Cerveja",
    "Medida usual": "lata",
    "g ou ml": 350,
    "CHO (g)": 12,
    "Calorias": 143
  },
  {
    "Alimento": "Cevada, infuso de",
    "Medida usual": "xícara de chá cheia",
    "g ou ml": 200,
    "CHO (g)": 5,
    "Calorias": 24
  },
  {
    "Alimento": "Chá mate (infusão sem açúcar)",
    "Medida usual": "xícara de chá cheia",
    "g ou ml": 200,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Chá sem açúcar (média)",
    "Medida usual": "xícara de chá cheia",
    "g ou ml": 200,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Chambinho",
    "Medida usual": "unidade",
    "g ou ml": 45,
    "CHO (g)": 4,
    "Calorias": 40
  },
  {
    "Alimento": "Champanhe",
    "Medida usual": "taça",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 82
  },
  {
    "Alimento": "Champanhe tipo sidra",
    "Medida usual": "taça",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 82
  },
  {
    "Alimento": "Champignon (Backed Potato®)",
    "Medida usual": "concha",
    "g ou ml": 60,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Champignon (conserva)",
    "Medida usual": "colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Chandelle chocolate",
    "Medida usual": "unidade",
    "g ou ml": 75,
    "CHO (g)": 18,
    "Calorias": 151
  },
  {
    "Alimento": "Chantilly",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 4,
    "Calorias": 60
  },
  {
    "Alimento": "Charutinho de folha de uva",
    "Medida usual": "porcao",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 99
  },
  {
    "Alimento": "Charutinho de repolho",
    "Medida usual": "porcao",
    "g ou ml": 100,
    "CHO (g)": 2,
    "Calorias": 67
  },
  {
    "Alimento": "Charuto folha de uva Habib’s®",
    "Medida usual": "porção",
    "g ou ml": 245,
    "CHO (g)": 19,
    "Calorias": 263
  },
  {
    "Alimento": "Charuto repolho Habib’s®",
    "Medida usual": "porção",
    "g ou ml": 285,
    "CHO (g)": 23,
    "Calorias": 295
  },
  {
    "Alimento": "Cheddar McMelt (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 29,
    "Calorias": 481
  },
  {
    "Alimento": "Cheeseburger",
    "Medida usual": "unidade",
    "g ou ml": 140,
    "CHO (g)": 40,
    "Calorias": 358
  },
  {
    "Alimento": "Cheeseburguer (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 120,
    "CHO (g)": 30,
    "Calorias": 329
  },
  {
    "Alimento": "Cheeseburguer (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 116,
    "CHO (g)": 32,
    "Calorias": 280
  },
  {
    "Alimento": "Cheeseburguer (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 30,
    "Calorias": 295
  },
  {
    "Alimento": "Cheeseburguer com bacon (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 119,
    "CHO (g)": 32,
    "Calorias": 310
  },
  {
    "Alimento": "Cheeseburguer duplo com bacon (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 160,
    "CHO (g)": 32,
    "Calorias": 440
  },
  {
    "Alimento": "Cheesecake com Mirtilo® (sorvete)",
    "Medida usual": "01 bola",
    "g ou ml": 60,
    "CHO (g)": 18,
    "Calorias": 140
  },
  {
    "Alimento": "Cheetos sabor natural",
    "Medida usual": "1 e 1/2 xícara",
    "g ou ml": 25,
    "CHO (g)": 17,
    "Calorias": 121
  },
  {
    "Alimento": "Chester",
    "Medida usual": "fatia",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 31
  },
  {
    "Alimento": "Chicken bacon crispy McWrap (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 249,
    "CHO (g)": 54,
    "Calorias": 565
  },
  {
    "Alimento": "Chicken bacon grilled McWrap (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 235,
    "CHO (g)": 32,
    "Calorias": 440
  },
  {
    "Alimento": "Chicken classic crispy Sandwich (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 55,
    "Calorias": 510
  },
  {
    "Alimento": "Chicken Junior Sandwich (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 38,
    "Calorias": 380
  },
  {
    "Alimento": "Chiclete",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 16
  },
  {
    "Alimento": "Chiclete sabor sortido Bubbaloo®",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 16
  },
  {
    "Alimento": "Chiclete Trident® tuti-frutti",
    "Medida usual": "unidade",
    "g ou ml": 2,
    "CHO (g)": 1,
    "Calorias": 3
  },
  {
    "Alimento": "Chicória refogada",
    "Medida usual": "colher de sopa",
    "g ou ml": 45,
    "CHO (g)": 3,
    "Calorias": 39
  },
  {
    "Alimento": "Chimarrão",
    "Medida usual": "cuia média",
    "g ou ml": 200,
    "CHO (g)": 0,
    "Calorias": 12
  },
  {
    "Alimento": "Chocolate alpino diet Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 17,
    "Calorias": 143
  },
  {
    "Alimento": "Chocolate ao leite",
    "Medida usual": "barra pequena",
    "g ou ml": 30,
    "CHO (g)": 18,
    "Calorias": 160
  },
  {
    "Alimento": "Chocolate ao leite diet",
    "Medida usual": "barra pequena",
    "g ou ml": 30,
    "CHO (g)": 13,
    "Calorias": 157
  },
  {
    "Alimento": "Chocolate ao leite diet Gold®",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 14,
    "Calorias": 122
  },
  {
    "Alimento": "Chocolate Batom®",
    "Medida usual": "unidade",
    "g ou ml": 16,
    "CHO (g)": 10,
    "Calorias": 86
  },
  {
    "Alimento": "Chocolate Bis®",
    "Medida usual": "unidade",
    "g ou ml": 7,
    "CHO (g)": 5,
    "Calorias": 37
  },
  {
    "Alimento": "Chocolate Classic Zero açúcar",
    "Medida usual": "1 unidade",
    "g ou ml": 22,
    "CHO (g)": 8,
    "Calorias": 94
  },
  {
    "Alimento": "Chocolate Diamante Negro®",
    "Medida usual": "barra pequena",
    "g ou ml": 30,
    "CHO (g)": 19,
    "Calorias": 156
  },
  {
    "Alimento": "Chocolate em pó",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 9,
    "Calorias": 52
  },
  {
    "Alimento": "Chocolate Ferrero Rocher®",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 6,
    "Calorias": 71
  },
  {
    "Alimento": "Chocolate quente com leite (Mc’ Donalds®)",
    "Medida usual": "copo grande",
    "g ou ml": 250,
    "CHO (g)": 24,
    "Calorias": 178
  },
  {
    "Alimento": "Chocolate Suflair®",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 15,
    "Calorias": 132
  },
  {
    "Alimento": "Chocolate Talento®",
    "Medida usual": "1/4 barra",
    "g ou ml": 25,
    "CHO (g)": 13,
    "Calorias": 137
  },
  {
    "Alimento": "Chocolate Talento® diet",
    "Medida usual": "barra pequena",
    "g ou ml": 25,
    "CHO (g)": 12,
    "Calorias": 129
  },
  {
    "Alimento": "Chocotone Bauducco®",
    "Medida usual": "01 fatia pequena",
    "g ou ml": 100,
    "CHO (g)": 49,
    "Calorias": 396
  },
  {
    "Alimento": "Chopp escuro",
    "Medida usual": "tulipa",
    "g ou ml": 290,
    "CHO (g)": 11,
    "Calorias": 148
  },
  {
    "Alimento": "Chouriço",
    "Medida usual": "gomo",
    "g ou ml": 60,
    "CHO (g)": 1,
    "Calorias": 227
  },
  {
    "Alimento": "Chuchu à milanesa",
    "Medida usual": "fatia média",
    "g ou ml": 70,
    "CHO (g)": 10,
    "Calorias": 127
  },
  {
    "Alimento": "Chuchu ao molho branco",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 3,
    "Calorias": 28
  },
  {
    "Alimento": "Chucrute",
    "Medida usual": "xícara",
    "g ou ml": 120,
    "CHO (g)": 5,
    "Calorias": 24
  },
  {
    "Alimento": "Churros com doce de leite",
    "Medida usual": "unidade aperitivo",
    "g ou ml": 30,
    "CHO (g)": 13,
    "Calorias": 97
  },
  {
    "Alimento": "Cidra",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 10,
    "Calorias": 40
  },
  {
    "Alimento": "Ciriguela",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 4,
    "Calorias": 15
  },
  {
    "Alimento": "Coalhada integral Itambé®",
    "Medida usual": "pote",
    "g ou ml": 130,
    "CHO (g)": 17,
    "Calorias": 120
  },
  {
    "Alimento": "Coalhada seca natural Alibey®",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 19
  },
  {
    "Alimento": "Cobertura de chocolate ao leite Garoto®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 14,
    "Calorias": 140
  },
  {
    "Alimento": "Coca-Cola®",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 20,
    "Calorias": 80
  },
  {
    "Alimento": "Cocada light Santa Helena®",
    "Medida usual": "unidade média",
    "g ou ml": 70,
    "CHO (g)": 37,
    "Calorias": 405
  },
  {
    "Alimento": "Cocada queimada Brasil Caipira®",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 86
  },
  {
    "Alimento": "Coco fresco ralado",
    "Medida usual": "xícara",
    "g ou ml": 100,
    "CHO (g)": 15,
    "Calorias": 354
  },
  {
    "Alimento": "Coco-da-baía, água-de",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 10,
    "Calorias": 44
  },
  {
    "Alimento": "Cogumelo em conserva",
    "Medida usual": "colher de sopa",
    "g ou ml": 27,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Colomba Pascal gotas de chocolate (Bauducco®)",
    "Medida usual": "fatia",
    "g ou ml": 80,
    "CHO (g)": 40,
    "Calorias": 350
  },
  {
    "Alimento": "Colomba Pascal salgada",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 228
  },
  {
    "Alimento": "Conhaque",
    "Medida usual": "dose",
    "g ou ml": 50,
    "CHO (g)": 0,
    "Calorias": 115
  },
  {
    "Alimento": "Cookie aveia e passas (Subway®)",
    "Medida usual": "unidade",
    "g ou ml": 33,
    "CHO (g)": 28,
    "Calorias": 190
  },
  {
    "Alimento": "Cookie cheescake com framboesa (Subway®)",
    "Medida usual": "unidade",
    "g ou ml": 33,
    "CHO (g)": 28,
    "Calorias": 200
  },
  {
    "Alimento": "Cookie chocolate (Subway®)",
    "Medida usual": "unidade",
    "g ou ml": 33,
    "CHO (g)": 29,
    "Calorias": 210
  },
  {
    "Alimento": "Cookies integral quinua e banana Taeq®",
    "Medida usual": "6 unidades",
    "g ou ml": 30,
    "CHO (g)": 17,
    "Calorias": 123
  },
  {
    "Alimento": "Coração de frango",
    "Medida usual": "01 unidade média",
    "g ou ml": 5,
    "CHO (g)": 0,
    "Calorias": 7
  },
  {
    "Alimento": "Coração de galinha cozido",
    "Medida usual": "unidade média",
    "g ou ml": 5,
    "CHO (g)": 0,
    "Calorias": 8
  },
  {
    "Alimento": "Costela de boi assada",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 136
  },
  {
    "Alimento": "Couve crua",
    "Medida usual": "folha média",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Couve refogada",
    "Medida usual": "folha média",
    "g ou ml": 25,
    "CHO (g)": 4,
    "Calorias": 36
  },
  {
    "Alimento": "Couve-flor à milanesa",
    "Medida usual": "ramo médio",
    "g ou ml": 90,
    "CHO (g)": 11,
    "Calorias": 136
  },
  {
    "Alimento": "Couve-flor cozida",
    "Medida usual": "ramo médio",
    "g ou ml": 60,
    "CHO (g)": 4,
    "Calorias": 25
  },
  {
    "Alimento": "Coxa de frango assada",
    "Medida usual": "média",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 215
  },
  {
    "Alimento": "Cream Cheese",
    "Medida usual": "colher de sopa",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 84
  },
  {
    "Alimento": "Creme de abacate sem açúcar",
    "Medida usual": "colher sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 3,
    "Calorias": 43
  },
  {
    "Alimento": "Creme de amendoim",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 20,
    "CHO (g)": 4,
    "Calorias": 125
  },
  {
    "Alimento": "Creme de leite",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 46
  },
  {
    "Alimento": "Creme de milho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 33,
    "CHO (g)": 5,
    "Calorias": 35
  },
  {
    "Alimento": "Creme vegetal de chantilly Vigor®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 56
  },
  {
    "Alimento": "Cremogema chocolate",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 17,
    "Calorias": 72
  },
  {
    "Alimento": "Crepe de maçã diet",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 18,
    "Calorias": 110
  },
  {
    "Alimento": "Croissant",
    "Medida usual": "unidade grande",
    "g ou ml": 80,
    "CHO (g)": 32,
    "Calorias": 328
  },
  {
    "Alimento": "Croissant de chocolate",
    "Medida usual": "unidade pequena",
    "g ou ml": 57,
    "CHO (g)": 24,
    "Calorias": 237
  },
  {
    "Alimento": "Croissant de queijo",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 32,
    "Calorias": 388
  },
  {
    "Alimento": "Croquete de carne/milho",
    "Medida usual": "unidade pequena",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 35
  },
  {
    "Alimento": "Cuca alemã",
    "Medida usual": "fatia",
    "g ou ml": 100,
    "CHO (g)": 33,
    "Calorias": 209
  },
  {
    "Alimento": "Cup noodles®",
    "Medida usual": "unidade comercial",
    "g ou ml": 65,
    "CHO (g)": 38,
    "Calorias": 300
  },
  {
    "Alimento": "Cupuaçu (creme)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 5,
    "Calorias": 135
  },
  {
    "Alimento": "Curau de milho",
    "Medida usual": "2/3 xícara de chá",
    "g ou ml": 140,
    "CHO (g)": 33,
    "Calorias": 162
  },
  {
    "Alimento": "Curry",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 9,
    "CHO (g)": 5,
    "Calorias": 34
  },
  {
    "Alimento": "Cuscuz de milho",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 85,
    "CHO (g)": 34,
    "Calorias": 161
  },
  {
    "Alimento": "Cuscuz paulista",
    "Medida usual": "01 fatia pequena",
    "g ou ml": 80,
    "CHO (g)": 34,
    "Calorias": 161
  },
  {
    "Alimento": "Damasco seco",
    "Medida usual": "01 unidade pequena",
    "g ou ml": 7,
    "CHO (g)": 2,
    "Calorias": 9
  },
  {
    "Alimento": "Damasco, geléia de",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 13,
    "Calorias": 52
  },
  {
    "Alimento": "Danette®",
    "Medida usual": "unidade",
    "g ou ml": 110,
    "CHO (g)": 25,
    "Calorias": 166
  },
  {
    "Alimento": "Dobradinha",
    "Medida usual": "concha pequena",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 111
  },
  {
    "Alimento": "Doce de abacaxi",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 32,
    "Calorias": 130
  },
  {
    "Alimento": "Doce de abóbora cremoso",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 22,
    "Calorias": 80
  },
  {
    "Alimento": "Doce de abóbora e coco",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 18,
    "Calorias": 83
  },
  {
    "Alimento": "Doce de arroz de leite",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 13,
    "Calorias": 66
  },
  {
    "Alimento": "Doce de batata doce",
    "Medida usual": "porção pequena",
    "g ou ml": 30,
    "CHO (g)": 22,
    "Calorias": 121
  },
  {
    "Alimento": "Doce de buriti",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 41,
    "Calorias": 165
  },
  {
    "Alimento": "Doce de cidra",
    "Medida usual": "colher de sopa",
    "g ou ml": 50,
    "CHO (g)": 20,
    "Calorias": 81
  },
  {
    "Alimento": "Doce de coco",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 21,
    "Calorias": 219
  },
  {
    "Alimento": "Doce de cupuaçu",
    "Medida usual": "colher de sopa",
    "g ou ml": 40,
    "CHO (g)": 30,
    "Calorias": 118
  },
  {
    "Alimento": "Doce de goiaba",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 21,
    "Calorias": 86
  },
  {
    "Alimento": "Doce de goiaba em calda Diet House®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 6,
    "Calorias": 23
  },
  {
    "Alimento": "Doce de laranja azeda",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 40,
    "Calorias": 153
  },
  {
    "Alimento": "Doce de laranja Diet House®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 9
  },
  {
    "Alimento": "Doce de leite",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 22,
    "Calorias": 116
  },
  {
    "Alimento": "Doce de limão",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 27,
    "Calorias": 107
  },
  {
    "Alimento": "Doce de mamão verde",
    "Medida usual": "colher de sopa",
    "g ou ml": 40,
    "CHO (g)": 19,
    "Calorias": 78
  },
  {
    "Alimento": "Doce de manga",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 27,
    "Calorias": 140
  },
  {
    "Alimento": "Doce de ovos",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 6,
    "Calorias": 52
  },
  {
    "Alimento": "Docinhos variados (média)",
    "Medida usual": "01 unidade média",
    "g ou ml": 30,
    "CHO (g)": 16,
    "Calorias": 125
  },
  {
    "Alimento": "Doriana® cremosa",
    "Medida usual": "colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 59
  },
  {
    "Alimento": "Doriana® light",
    "Medida usual": "colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 32
  },
  {
    "Alimento": "Double cheddar (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 210,
    "CHO (g)": 32,
    "Calorias": 484
  },
  {
    "Alimento": "Double cheddar (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 335,
    "CHO (g)": 35,
    "Calorias": 668
  },
  {
    "Alimento": "Double cheeseburguer (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 185,
    "CHO (g)": 33,
    "Calorias": 512
  },
  {
    "Alimento": "Double grill bacon (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 488,
    "CHO (g)": 58,
    "Calorias": 1314
  },
  {
    "Alimento": "Drops comum",
    "Medida usual": "unidade",
    "g ou ml": 3,
    "CHO (g)": 3,
    "Calorias": 11
  },
  {
    "Alimento": "Empada de frango",
    "Medida usual": "unidade média",
    "g ou ml": 55,
    "CHO (g)": 14,
    "Calorias": 197
  },
  {
    "Alimento": "Empada de Palmito",
    "Medida usual": "unidade",
    "g ou ml": 55,
    "CHO (g)": 14,
    "Calorias": 129
  },
  {
    "Alimento": "Empadão goiano",
    "Medida usual": "unidade média",
    "g ou ml": 300,
    "CHO (g)": 48,
    "Calorias": 618
  },
  {
    "Alimento": "Empadinha",
    "Medida usual": "unidade pequena",
    "g ou ml": 12,
    "CHO (g)": 4,
    "Calorias": 56
  },
  {
    "Alimento": "Enrolado de presunto e queijo",
    "Medida usual": "unidade média",
    "g ou ml": 40,
    "CHO (g)": 15,
    "Calorias": 114
  },
  {
    "Alimento": "Enrolado de salsicha",
    "Medida usual": "unidade média",
    "g ou ml": 27,
    "CHO (g)": 3,
    "Calorias": 79
  },
  {
    "Alimento": "Ervilha em conserva",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 27,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Ervilha verde cozida",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 4,
    "Calorias": 26
  },
  {
    "Alimento": "Esfiha de carne aberta",
    "Medida usual": "unidade",
    "g ou ml": 75,
    "CHO (g)": 18,
    "Calorias": 125
  },
  {
    "Alimento": "Esfiha de carne fechada",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 29,
    "Calorias": 203
  },
  {
    "Alimento": "Esfiha de espinafre (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 80,
    "CHO (g)": 17,
    "Calorias": 122
  },
  {
    "Alimento": "Esfiha folhada de cheddar com pepperoni(Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 55,
    "CHO (g)": 11,
    "Calorias": 201
  },
  {
    "Alimento": "Esfiha folhada de cheddar com pepperoni",
    "Medida usual": "unidade",
    "g ou ml": 55,
    "CHO (g)": 11,
    "Calorias": 201
  },
  {
    "Alimento": "Esfiha folhada de chocolate (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 45,
    "CHO (g)": 16,
    "Calorias": 199
  },
  {
    "Alimento": "(Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 65,
    "CHO (g)": 28,
    "Calorias": 295
  },
  {
    "Alimento": "Espinafre cru",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 4
  },
  {
    "Alimento": "Espinafre refogado",
    "Medida usual": "colher do sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 27
  },
  {
    "Alimento": "Estrogonoff de filé mignon (Backed Potato®)",
    "Medida usual": "concha",
    "g ou ml": 85,
    "CHO (g)": 0,
    "Calorias": 146
  },
  {
    "Alimento": "Estrogonoffe de carne",
    "Medida usual": "colher do sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 1,
    "Calorias": 39
  },
  {
    "Alimento": "Estrogonoffe de frango",
    "Medida usual": "colher do sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 1,
    "Calorias": 43
  },
  {
    "Alimento": "Extrato de malte",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 10,
    "Calorias": 42
  },
  {
    "Alimento": "Falafel (bolinho de grão de bico)",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 155
  },
  {
    "Alimento": "Fanta® laranja",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 22,
    "Calorias": 90
  },
  {
    "Alimento": "Farelo de trigo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 9,
    "CHO (g)": 5,
    "Calorias": 28
  },
  {
    "Alimento": "Farinha d’água-do-pará",
    "Medida usual": "copo descartável",
    "g ou ml": 50,
    "CHO (g)": 41,
    "Calorias": 166
  },
  {
    "Alimento": "Farinha de arroz",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 14,
    "Calorias": 60
  },
  {
    "Alimento": "Farinha de centeio integral",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 11,
    "Calorias": 54
  },
  {
    "Alimento": "Farinha de mandioca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 14,
    "Calorias": 57
  },
  {
    "Alimento": "Farinha de milho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 12,
    "Calorias": 54
  },
  {
    "Alimento": "Farinha de milho integral",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 11,
    "Calorias": 53
  },
  {
    "Alimento": "Farinha de rosca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 11,
    "Calorias": 61
  },
  {
    "Alimento": "Farinha de tapioca com coco e açúcar",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 21,
    "Calorias": 107
  },
  {
    "Alimento": "Farinha de trigo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 15,
    "Calorias": 71
  },
  {
    "Alimento": "Farinha láctea (Nestlé®)",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 8,
    "CHO (g)": 6,
    "Calorias": 30
  },
  {
    "Alimento": "Farofa",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 12,
    "Calorias": 71
  },
  {
    "Alimento": "Farofa com Bacon",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 45,
    "CHO (g)": 26,
    "Calorias": 206
  },
  {
    "Alimento": "Farofa com lingüiça",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 7,
    "Calorias": 54
  },
  {
    "Alimento": "Farofa com tempero/óleo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 12,
    "Calorias": 71
  },
  {
    "Alimento": "Farofa de farinha de mandioca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 20,
    "Calorias": 96
  },
  {
    "Alimento": "Fatouche",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 5,
    "Calorias": 163
  },
  {
    "Alimento": "Feijão branco cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Feijão carioquinha cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 3,
    "Calorias": 19
  },
  {
    "Alimento": "Feijão preto cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 2,
    "Calorias": 12
  },
  {
    "Alimento": "Feijão tropeiro",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 7,
    "Calorias": 50
  },
  {
    "Alimento": "Feijão-fradinho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 2,
    "Calorias": 13
  },
  {
    "Alimento": "Feijoada caseira",
    "Medida usual": "concha média cheia",
    "g ou ml": 225,
    "CHO (g)": 24,
    "Calorias": 346
  },
  {
    "Alimento": "Fermento biológico",
    "Medida usual": "tablete",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 14
  },
  {
    "Alimento": "Fermento em pó",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 17
  },
  {
    "Alimento": "Fettuccine",
    "Medida usual": "01 pegador",
    "g ou ml": 110,
    "CHO (g)": 24,
    "Calorias": 150
  },
  {
    "Alimento": "Fettuccine a bolonhesa (Perdigão®)",
    "Medida usual": "porção",
    "g ou ml": 350,
    "CHO (g)": 49,
    "Calorias": 458
  },
  {
    "Alimento": "Fígado de boi grelhado",
    "Medida usual": "bife médio",
    "g ou ml": 100,
    "CHO (g)": 4,
    "Calorias": 225
  },
  {
    "Alimento": "Fígado de galinha cru",
    "Medida usual": "unidade média",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 53
  },
  {
    "Alimento": "Figo",
    "Medida usual": "unidade média",
    "g ou ml": 55,
    "CHO (g)": 8,
    "Calorias": 38
  },
  {
    "Alimento": "Figo cristalizado",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 22,
    "Calorias": 86
  },
  {
    "Alimento": "Figo enlatado em calda",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 10,
    "Calorias": 38
  },
  {
    "Alimento": "Filé a parmeggiana",
    "Medida usual": "01 unidade pequena",
    "g ou ml": 150,
    "CHO (g)": 13,
    "Calorias": 490
  },
  {
    "Alimento": "File ao molho madeira",
    "Medida usual": "01 unidade pequena",
    "g ou ml": 180,
    "CHO (g)": 12,
    "Calorias": 227
  },
  {
    "Alimento": "Flocos de milho",
    "Medida usual": "colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 9,
    "Calorias": 38
  },
  {
    "Alimento": "Focaccia",
    "Medida usual": "fatia",
    "g ou ml": 50,
    "CHO (g)": 22,
    "Calorias": 136
  },
  {
    "Alimento": "Fogazza de calabresa (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 70,
    "CHO (g)": 22,
    "Calorias": 186
  },
  {
    "Alimento": "Fogazza de mussarela (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 70,
    "CHO (g)": 21,
    "Calorias": 200
  },
  {
    "Alimento": "Folhado de frango",
    "Medida usual": "unidade média",
    "g ou ml": 40,
    "CHO (g)": 9,
    "Calorias": 109
  },
  {
    "Alimento": "Fondue de carne",
    "Medida usual": "bife médio",
    "g ou ml": 90,
    "CHO (g)": 0,
    "Calorias": 180
  },
  {
    "Alimento": "Fondue de chocolate",
    "Medida usual": "colher sopa",
    "g ou ml": 30,
    "CHO (g)": 15,
    "Calorias": 105
  },
  {
    "Alimento": "Fondue de queijo (Gramado®)",
    "Medida usual": "colher de sopa (molho)",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 70
  },
  {
    "Alimento": "Framboesa",
    "Medida usual": "unidade média",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Framboesa, doce em pasta",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 35,
    "Calorias": 143
  },
  {
    "Alimento": "Framboesa, geléia de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 34,
    "CHO (g)": 24,
    "Calorias": 97
  },
  {
    "Alimento": "Frango à milanesa",
    "Medida usual": "filé pequeno",
    "g ou ml": 100,
    "CHO (g)": 14,
    "Calorias": 311
  },
  {
    "Alimento": "Frango assado",
    "Medida usual": "sobrecoxa média",
    "g ou ml": 65,
    "CHO (g)": 0,
    "Calorias": 78
  },
  {
    "Alimento": "Frango com requeijão (Backed Potato®)",
    "Medida usual": "concha",
    "g ou ml": 85,
    "CHO (g)": 0,
    "Calorias": 110
  },
  {
    "Alimento": "Frango cozido",
    "Medida usual": "sobrecoxa média",
    "g ou ml": 65,
    "CHO (g)": 0,
    "Calorias": 82
  },
  {
    "Alimento": "Frango filé cozido",
    "Medida usual": "filé pequeno",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 163
  },
  {
    "Alimento": "Frango frito",
    "Medida usual": "sobrecoxa média",
    "g ou ml": 65,
    "CHO (g)": 0,
    "Calorias": 94
  },
  {
    "Alimento": "Franlitos (Bob’s®)",
    "Medida usual": "porção de 6 unidades",
    "g ou ml": 120,
    "CHO (g)": 28,
    "Calorias": 272
  },
  {
    "Alimento": "Frigideira de repolho com camarão seco",
    "Medida usual": "colher de sopa",
    "g ou ml": 25,
    "CHO (g)": 1,
    "Calorias": 25
  },
  {
    "Alimento": "Fruta - pão",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 24,
    "Calorias": 96
  },
  {
    "Alimento": "Fruta-de-conde ou pinha",
    "Medida usual": "unidade pequena",
    "g ou ml": 60,
    "CHO (g)": 8,
    "Calorias": 41
  },
  {
    "Alimento": "Frutas cristalizadas industrializadas",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 12,
    "Calorias": 48
  },
  {
    "Alimento": "Fubá",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 16,
    "Calorias": 71
  },
  {
    "Alimento": "Funghi",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 10,
    "Calorias": 71
  },
  {
    "Alimento": "Galeto assado",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 95,
    "CHO (g)": 0,
    "Calorias": 115
  },
  {
    "Alimento": "Galinha ao molho pardo",
    "Medida usual": "pedaço médio",
    "g ou ml": 95,
    "CHO (g)": 1,
    "Calorias": 150
  },
  {
    "Alimento": "Galinhada com pequi",
    "Medida usual": "colher de servir",
    "g ou ml": 60,
    "CHO (g)": 13,
    "Calorias": 108
  },
  {
    "Alimento": "Gatorade® - média sabores",
    "Medida usual": "garrafa",
    "g ou ml": 500,
    "CHO (g)": 24,
    "Calorias": 120
  },
  {
    "Alimento": "Gelatina de frutas em pó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 22,
    "Calorias": 97
  },
  {
    "Alimento": "Gelatina diet em pó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 14,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Gelatina em pó com açúcar",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 14,
    "CHO (g)": 12,
    "Calorias": 55
  },
  {
    "Alimento": "Gelatina light morango preparada",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 3
  },
  {
    "Alimento": "Geléia de damasco diet",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 22,
    "CHO (g)": 6,
    "Calorias": 19
  },
  {
    "Alimento": "Geléia de frutas (média)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 18,
    "Calorias": 74
  },
  {
    "Alimento": "Geléia de mocotó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 12,
    "Calorias": 64
  },
  {
    "Alimento": "Geléia de mocotó dietética",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 2,
    "Calorias": 22
  },
  {
    "Alimento": "Geléia de morango diet",
    "Medida usual": "colher de sopa rasa",
    "g ou ml": 22,
    "CHO (g)": 6,
    "Calorias": 25
  },
  {
    "Alimento": "Germen de trigo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 37
  },
  {
    "Alimento": "Glucose de milho",
    "Medida usual": "colher de sobremesa",
    "g ou ml": 9,
    "CHO (g)": 6,
    "Calorias": 26
  },
  {
    "Alimento": "Goiaba",
    "Medida usual": "unidade média",
    "g ou ml": 170,
    "CHO (g)": 20,
    "Calorias": 96
  },
  {
    "Alimento": "Goiabada",
    "Medida usual": "fatia pequena",
    "g ou ml": 40,
    "CHO (g)": 27,
    "Calorias": 109
  },
  {
    "Alimento": "Goma de tapioca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 46
  },
  {
    "Alimento": "Gordura vegetal hidrogenada",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 14,
    "CHO (g)": 0,
    "Calorias": 126
  },
  {
    "Alimento": "Gorgonzola (Backed Potato®)",
    "Medida usual": "concha",
    "g ou ml": 60,
    "CHO (g)": 0,
    "Calorias": 288
  },
  {
    "Alimento": "Gran picanha 100g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 233,
    "CHO (g)": 27,
    "Calorias": 526
  },
  {
    "Alimento": "Gran picanha 200g (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 348,
    "CHO (g)": 27,
    "Calorias": 755
  },
  {
    "Alimento": "Granola",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 11,
    "CHO (g)": 7,
    "Calorias": 51
  },
  {
    "Alimento": "Grão-de-bico cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 22,
    "CHO (g)": 4,
    "Calorias": 25
  },
  {
    "Alimento": "Graviola",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 16,
    "Calorias": 62
  },
  {
    "Alimento": "Guaraná diet",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 0,
    "Calorias": 0
  },
  {
    "Alimento": "Guaraná Jesus®",
    "Medida usual": "lata",
    "g ou ml": 350,
    "CHO (g)": 42,
    "Calorias": 168
  },
  {
    "Alimento": "Guaraná Kuat®",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 25,
    "Calorias": 98
  },
  {
    "Alimento": "Guaraná refrigerante",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 24,
    "Calorias": 96
  },
  {
    "Alimento": "Guariroba",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 10
  },
  {
    "Alimento": "Guariroba refogada",
    "Medida usual": "2 colheres de sopa cheias",
    "g ou ml": 60,
    "CHO (g)": 1,
    "Calorias": 22
  },
  {
    "Alimento": "Hamburguer - sanduíche",
    "Medida usual": "unidade",
    "g ou ml": 125,
    "CHO (g)": 40,
    "Calorias": 301
  },
  {
    "Alimento": "Hamburguer (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 29,
    "Calorias": 245
  },
  {
    "Alimento": "Hamburguer de carne bovina",
    "Medida usual": "unidade média",
    "g ou ml": 56,
    "CHO (g)": 2,
    "Calorias": 139
  },
  {
    "Alimento": "Hamburguer de frango",
    "Medida usual": "unidade média",
    "g ou ml": 56,
    "CHO (g)": 2,
    "Calorias": 131
  },
  {
    "Alimento": "Hamburguer de peru",
    "Medida usual": "unidade média",
    "g ou ml": 56,
    "CHO (g)": 0,
    "Calorias": 82
  },
  {
    "Alimento": "Hamburguer simples",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 29,
    "Calorias": 245
  },
  {
    "Alimento": "Harumaki de carne",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 8,
    "Calorias": 103
  },
  {
    "Alimento": "Harumaki filadélfia",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 8,
    "Calorias": 158
  },
  {
    "Alimento": "Herbalife de baunilha",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 7,
    "Calorias": 51
  },
  {
    "Alimento": "Hipoglosso (peixe) cozido",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 127
  },
  {
    "Alimento": "Homus",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 14,
    "Calorias": 94
  },
  {
    "Alimento": "Homus (Habib’s®)",
    "Medida usual": "porção",
    "g ou ml": 240,
    "CHO (g)": 34,
    "Calorias": 360
  },
  {
    "Alimento": "Hossomaki de atum",
    "Medida usual": "unidade",
    "g ou ml": 110,
    "CHO (g)": 26,
    "Calorias": 164
  },
  {
    "Alimento": "Hossomaki de pepino",
    "Medida usual": "unidade",
    "g ou ml": 110,
    "CHO (g)": 26,
    "Calorias": 123
  },
  {
    "Alimento": "Hossomaki de salmão",
    "Medida usual": "unidade",
    "g ou ml": 110,
    "CHO (g)": 26,
    "Calorias": 155
  },
  {
    "Alimento": "Inhame, raiz sem casca de (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 8,
    "Calorias": 37
  },
  {
    "Alimento": "Iogurte Activia® light",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 11,
    "Calorias": 62
  },
  {
    "Alimento": "Iogurte Activia® natural",
    "Medida usual": "pote",
    "g ou ml": 170,
    "CHO (g)": 12,
    "Calorias": 132
  },
  {
    "Alimento": "Iogurte Activia® original",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 16,
    "Calorias": 110
  },
  {
    "Alimento": "Iogurte Corpus® de morango light",
    "Medida usual": "garrafinha",
    "g ou ml": 170,
    "CHO (g)": 8,
    "Calorias": 69
  },
  {
    "Alimento": "Iogurte Dan up®",
    "Medida usual": "garrafinha",
    "g ou ml": 180,
    "CHO (g)": 28,
    "Calorias": 157
  },
  {
    "Alimento": "Iogurte de frutas (média)",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 17,
    "Calorias": 90
  },
  {
    "Alimento": "Iogurte de frutas light (média)",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 7,
    "Calorias": 42
  },
  {
    "Alimento": "Iogurte Grego Nestlé® light",
    "Medida usual": "pote",
    "g ou ml": 90,
    "CHO (g)": 10,
    "Calorias": 78
  },
  {
    "Alimento": "Iogurte Grego Nestlé® tradicional",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 15,
    "Calorias": 113
  },
  {
    "Alimento": "Iogurte Grego Vigor®",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 16,
    "Calorias": 151
  },
  {
    "Alimento": "Iogurte Grego Vigor® zero",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 5,
    "Calorias": 49
  },
  {
    "Alimento": "Iogurte Molico® total cálcio líquido (média)",
    "Medida usual": "garrafinha",
    "g ou ml": 170,
    "CHO (g)": 8,
    "Calorias": 73
  },
  {
    "Alimento": "Iogurte Molico® total cálcio polpa (média)",
    "Medida usual": "pote",
    "g ou ml": 100,
    "CHO (g)": 6,
    "Calorias": 42
  },
  {
    "Alimento": "Iogurte natural c/ mel",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 36,
    "Calorias": 225
  },
  {
    "Alimento": "Iogurte natural desnatado (Fiore®)",
    "Medida usual": "copo",
    "g ou ml": 140,
    "CHO (g)": 6,
    "Calorias": 45
  },
  {
    "Alimento": "Iogurte natural desnatado (média)",
    "Medida usual": "copo",
    "g ou ml": 185,
    "CHO (g)": 12,
    "Calorias": 85
  },
  {
    "Alimento": "Iogurte natural integral (média)",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 12,
    "Calorias": 142
  },
  {
    "Alimento": "Iogurte petit suisse (média)",
    "Medida usual": "unidade",
    "g ou ml": 45,
    "CHO (g)": 9,
    "Calorias": 71
  },
  {
    "Alimento": "Isca de carne de porco",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 67
  },
  {
    "Alimento": "Isca frita de pirarucu",
    "Medida usual": "escumadeira cheia",
    "g ou ml": 100,
    "CHO (g)": 16,
    "Calorias": 258
  },
  {
    "Alimento": "Jabuticaba",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 1,
    "Calorias": 2
  },
  {
    "Alimento": "Jaca",
    "Medida usual": "bago médio",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 3
  },
  {
    "Alimento": "Jambo",
    "Medida usual": "unidade média",
    "g ou ml": 40,
    "CHO (g)": 5,
    "Calorias": 22
  },
  {
    "Alimento": "Jambu cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Jamelão ou jambolão",
    "Medida usual": "unidade média",
    "g ou ml": 10,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Jaraqui cru",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 129
  },
  {
    "Alimento": "Jenipapo",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 26,
    "Calorias": 113
  },
  {
    "Alimento": "Jiló",
    "Medida usual": "colher (sopa) cheia",
    "g ou ml": 60,
    "CHO (g)": 5,
    "Calorias": 31
  },
  {
    "Alimento": "Joelho de porco (Einsbein®)",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 215
  },
  {
    "Alimento": "Kafta na bandeja (Habib’s®)",
    "Medida usual": "porção",
    "g ou ml": 250,
    "CHO (g)": 14,
    "Calorias": 300
  },
  {
    "Alimento": "Kani kama cru",
    "Medida usual": "unidade",
    "g ou ml": 16,
    "CHO (g)": 0,
    "Calorias": 13
  },
  {
    "Alimento": "Kanimaki",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Kappamaki de pepino",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 4,
    "Calorias": 18
  },
  {
    "Alimento": "Karo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 12,
    "Calorias": 49
  },
  {
    "Alimento": "Kasespatzle (macarrão com queijo)",
    "Medida usual": "pegador",
    "g ou ml": 130,
    "CHO (g)": 20,
    "Calorias": 198
  },
  {
    "Alimento": "Ketchup de tomate",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 5,
    "Calorias": 23
  },
  {
    "Alimento": "Kinder ovo® maxi (Ovo de Páscoa)",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 13,
    "Calorias": 143
  },
  {
    "Alimento": "Kiwi",
    "Medida usual": "unidade média",
    "g ou ml": 76,
    "CHO (g)": 11,
    "Calorias": 51
  },
  {
    "Alimento": "Lagosta à Thermidor",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 13,
    "Calorias": 460
  },
  {
    "Alimento": "Laranja lima",
    "Medida usual": "unidade media",
    "g ou ml": 90,
    "CHO (g)": 10,
    "Calorias": 41
  },
  {
    "Alimento": "Lasanha à bolonhesa",
    "Medida usual": "escumadeira",
    "g ou ml": 170,
    "CHO (g)": 27,
    "Calorias": 355
  },
  {
    "Alimento": "Lasanha de bacalhau e espinafre",
    "Medida usual": "porção",
    "g ou ml": 200,
    "CHO (g)": 42,
    "Calorias": 503
  },
  {
    "Alimento": "Leite condensado",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 8,
    "Calorias": 49
  },
  {
    "Alimento": "Leite condensado desnatado",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 9,
    "Calorias": 42
  },
  {
    "Alimento": "Leite de cabra integral",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 13,
    "Calorias": 223
  },
  {
    "Alimento": "Leite de coco industrializado",
    "Medida usual": "garrafa pequena",
    "g ou ml": 200,
    "CHO (g)": 11,
    "Calorias": 516
  },
  {
    "Alimento": "Leite de coco industrializado light",
    "Medida usual": "garrafa pequena",
    "g ou ml": 200,
    "CHO (g)": 6,
    "Calorias": 250
  },
  {
    "Alimento": "Leite de soja Ades®",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 8,
    "Calorias": 82
  },
  {
    "Alimento": "Leite de soja zero Ades®",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 3,
    "Calorias": 59
  },
  {
    "Alimento": "Leite de vaca desnatado",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 12,
    "Calorias": 84
  },
  {
    "Alimento": "Leite de vaca desnatado em pó",
    "Medida usual": "colher (sopa) cheia",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 35
  },
  {
    "Alimento": "Leite de vaca integral em pó",
    "Medida usual": "colher (sopa) cheia",
    "g ou ml": 16,
    "CHO (g)": 6,
    "Calorias": 80
  },
  {
    "Alimento": "Leite de vaca integral pasteurizado",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 12,
    "Calorias": 141
  },
  {
    "Alimento": "Lentilha cozida",
    "Medida usual": "colher sopa (cheia)",
    "g ou ml": 18,
    "CHO (g)": 3,
    "Calorias": 19
  },
  {
    "Alimento": "Licor",
    "Medida usual": "cálice",
    "g ou ml": 20,
    "CHO (g)": 6,
    "Calorias": 62
  },
  {
    "Alimento": "Limão",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Limão, geléia de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Limonada s/ açúcar",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 10,
    "Calorias": 28
  },
  {
    "Alimento": "Língua de boi cozida",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 94
  },
  {
    "Alimento": "Língua de gato Kompenhagen®",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 3,
    "Calorias": 36
  },
  {
    "Alimento": "Linguado assado",
    "Medida usual": "posta média",
    "g ou ml": 120,
    "CHO (g)": 0,
    "Calorias": 140
  },
  {
    "Alimento": "Linguiça calabresa",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 0,
    "Calorias": 146
  },
  {
    "Alimento": "Linguiça calabresa defumada",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 0,
    "Calorias": 146
  },
  {
    "Alimento": "Linguiça de frango",
    "Medida usual": "gomo",
    "g ou ml": 60,
    "CHO (g)": 0,
    "Calorias": 146
  },
  {
    "Alimento": "Linguiça de peru",
    "Medida usual": "gomo",
    "g ou ml": 60,
    "CHO (g)": 0,
    "Calorias": 83
  },
  {
    "Alimento": "Linguiça paio",
    "Medida usual": "unidade",
    "g ou ml": 160,
    "CHO (g)": 0,
    "Calorias": 363
  },
  {
    "Alimento": "Lombo de porco assado",
    "Medida usual": "pedaço grande",
    "g ou ml": 120,
    "CHO (g)": 0,
    "Calorias": 252
  },
  {
    "Alimento": "Lombo de vitela assado/ cozido",
    "Medida usual": "pedaço médio",
    "g ou ml": 50,
    "CHO (g)": 0,
    "Calorias": 113
  },
  {
    "Alimento": "Lula cozida",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 0,
    "Calorias": 74
  },
  {
    "Alimento": "M&M®",
    "Medida usual": "colher de sopa",
    "g ou ml": 12,
    "CHO (g)": 9,
    "Calorias": 61
  },
  {
    "Alimento": "M&M ́s® amendoim",
    "Medida usual": "colher de sopa",
    "g ou ml": 12,
    "CHO (g)": 8,
    "Calorias": 64
  },
  {
    "Alimento": "M&M ́s® chocolate",
    "Medida usual": "colher de sopa",
    "g ou ml": 12,
    "CHO (g)": 9,
    "Calorias": 61
  },
  {
    "Alimento": "Maçã com casca",
    "Medida usual": "unidade pequena",
    "g ou ml": 90,
    "CHO (g)": 14,
    "Calorias": 58
  },
  {
    "Alimento": "Maçã, suco de",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 22,
    "Calorias": 97
  },
  {
    "Alimento": "Macadâmica natural",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 3,
    "Calorias": 97
  },
  {
    "Alimento": "Macarrão à bolonhesa",
    "Medida usual": "escumadeira cheia",
    "g ou ml": 110,
    "CHO (g)": 22,
    "Calorias": 136
  },
  {
    "Alimento": "Macarrão ao alho e óleo",
    "Medida usual": "escumadeira cheia",
    "g ou ml": 110,
    "CHO (g)": 35,
    "Calorias": 241
  },
  {
    "Alimento": "Macarrão caseiro cozido",
    "Medida usual": "colher de arroz cheia",
    "g ou ml": 50,
    "CHO (g)": 11,
    "Calorias": 54
  },
  {
    "Alimento": "Macarrão instantâneo Maggi® lámen queijo",
    "Medida usual": "pacote",
    "g ou ml": 80,
    "CHO (g)": 50,
    "Calorias": 370
  },
  {
    "Alimento": "Macarrão mini fusilli picolini Barrila®",
    "Medida usual": "prato",
    "g ou ml": 80,
    "CHO (g)": 59,
    "Calorias": 280
  },
  {
    "Alimento": "Macaúba crua",
    "Medida usual": "2 unidades",
    "g ou ml": 100,
    "CHO (g)": 14,
    "Calorias": 404
  },
  {
    "Alimento": "Maizena",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 17,
    "Calorias": 70
  },
  {
    "Alimento": "Mamão formosa",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 45
  },
  {
    "Alimento": "Mamão papaya",
    "Medida usual": "meia unidade",
    "g ou ml": 160,
    "CHO (g)": 16,
    "Calorias": 64
  },
  {
    "Alimento": "Mamão papaya",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 3,
    "Calorias": 14
  },
  {
    "Alimento": "Mamão verde, doce de",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 19,
    "Calorias": 78
  },
  {
    "Alimento": "Mandioca cozida (picada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 9,
    "Calorias": 37
  },
  {
    "Alimento": "Mandioca frita",
    "Medida usual": "pedaço grande",
    "g ou ml": 100,
    "CHO (g)": 50,
    "Calorias": 300
  },
  {
    "Alimento": "Mandioquinha",
    "Medida usual": "colher de sopa",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Mané pelado",
    "Medida usual": "pedaço médio",
    "g ou ml": 70,
    "CHO (g)": 37,
    "Calorias": 226
  },
  {
    "Alimento": "Manga espada",
    "Medida usual": "unidade média",
    "g ou ml": 140,
    "CHO (g)": 22,
    "Calorias": 91
  },
  {
    "Alimento": "Manjar",
    "Medida usual": "fatia media",
    "g ou ml": 90,
    "CHO (g)": 36,
    "Calorias": 255
  },
  {
    "Alimento": "Manteiga",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 32,
    "CHO (g)": 0,
    "Calorias": 235
  },
  {
    "Alimento": "Maracujá",
    "Medida usual": "unidade média",
    "g ou ml": 45,
    "CHO (g)": 6,
    "Calorias": 31
  },
  {
    "Alimento": "Margarina",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 32,
    "CHO (g)": 0,
    "Calorias": 219
  },
  {
    "Alimento": "Maria mole",
    "Medida usual": "porção",
    "g ou ml": 44,
    "CHO (g)": 33,
    "Calorias": 132
  },
  {
    "Alimento": "Marmelada",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 40,
    "Calorias": 158
  },
  {
    "Alimento": "Marreco recheado assado",
    "Medida usual": "1/4 unidade",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 258
  },
  {
    "Alimento": "Marron-glacê",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 35,
    "Calorias": 149
  },
  {
    "Alimento": "Marshmelow Dr. Oetker®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 9,
    "Calorias": 40
  },
  {
    "Alimento": "Martini",
    "Medida usual": "dose",
    "g ou ml": 50,
    "CHO (g)": 2,
    "Calorias": 41
  },
  {
    "Alimento": "Massa fresca semipronta para pizza",
    "Medida usual": "unidade (inteira)",
    "g ou ml": 140,
    "CHO (g)": 80,
    "Calorias": 441
  },
  {
    "Alimento": "Massa fresca semipronta para pizza brotinho",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 23,
    "Calorias": 126
  },
  {
    "Alimento": "Massa pronta para pastel",
    "Medida usual": "2 discos de massa",
    "g ou ml": 30,
    "CHO (g)": 16,
    "Calorias": 83
  },
  {
    "Alimento": "Matrinxã inteiro cru",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 246
  },
  {
    "Alimento": "McChicken (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 177,
    "CHO (g)": 40,
    "Calorias": 424
  },
  {
    "Alimento": "McColosso caramelo (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 142,
    "CHO (g)": 52,
    "Calorias": 291
  },
  {
    "Alimento": "McColosso chocolate (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 137,
    "CHO (g)": 47,
    "Calorias": 274
  },
  {
    "Alimento": "McFish (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 151,
    "CHO (g)": 37,
    "Calorias": 362
  },
  {
    "Alimento": "McFlurry ovomaltine (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 200,
    "CHO (g)": 68,
    "Calorias": 425
  },
  {
    "Alimento": "McNífico (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 282,
    "CHO (g)": 37,
    "Calorias": 600
  },
  {
    "Alimento": "McNuggets 10 (Mc’ Donalds®)",
    "Medida usual": "porção de 10 unidades",
    "g ou ml": 166,
    "CHO (g)": 27,
    "Calorias": 431
  },
  {
    "Alimento": "McNuggets 4 (Mc’ Donalds®)",
    "Medida usual": "porção de 4 unidades",
    "g ou ml": 66,
    "CHO (g)": 11,
    "Calorias": 173
  },
  {
    "Alimento": "McNuggets 6 (Mc’ Donalds®)",
    "Medida usual": "porção de 6 unidades",
    "g ou ml": 0,
    "CHO (g)": 16,
    "Calorias": 259
  },
  {
    "Alimento": "Melabie",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 25,
    "Calorias": 162
  },
  {
    "Alimento": "Melado",
    "Medida usual": "colher de sopa",
    "g ou ml": 16,
    "CHO (g)": 12,
    "Calorias": 47
  },
  {
    "Alimento": "Melancia",
    "Medida usual": "fatia média",
    "g ou ml": 200,
    "CHO (g)": 11,
    "Calorias": 48
  },
  {
    "Alimento": "Melão",
    "Medida usual": "fatia grande",
    "g ou ml": 115,
    "CHO (g)": 7,
    "Calorias": 32
  },
  {
    "Alimento": "Melão cantalupo",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 34
  },
  {
    "Alimento": "Melão gaúcho",
    "Medida usual": "fatia pequena",
    "g ou ml": 100,
    "CHO (g)": 7,
    "Calorias": 29
  },
  {
    "Alimento": "Merengue de morango",
    "Medida usual": "porção média",
    "g ou ml": 60,
    "CHO (g)": 52,
    "Calorias": 214
  },
  {
    "Alimento": "Merluza assada",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 122
  },
  {
    "Alimento": "Michui de Filé Mingnon",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 2,
    "Calorias": 88
  },
  {
    "Alimento": "Michui de frango",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 1,
    "Calorias": 132
  },
  {
    "Alimento": "Michui de Frango",
    "Medida usual": "1 porção",
    "g ou ml": 100,
    "CHO (g)": 2,
    "Calorias": 90
  },
  {
    "Alimento": "Milho em espiga com 1 c.sobremesa de manteiga",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 32,
    "Calorias": 233
  },
  {
    "Alimento": "Milho verde em conserva enlatado",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 24,
    "CHO (g)": 5,
    "Calorias": 23
  },
  {
    "Alimento": "Milk shake clássico de chocolate (Bob’s®)",
    "Medida usual": "copo grande",
    "g ou ml": 700,
    "CHO (g)": 177,
    "Calorias": 846
  },
  {
    "Alimento": "Milk shake clássico de morango (Bob’s®)",
    "Medida usual": "copo grande",
    "g ou ml": 700,
    "CHO (g)": 136,
    "Calorias": 734
  },
  {
    "Alimento": "Milk shake crocante de ovomaltine (Bob’s®)",
    "Medida usual": "copo grande",
    "g ou ml": 700,
    "CHO (g)": 157,
    "Calorias": 852
  },
  {
    "Alimento": "Milk shake de baunilha",
    "Medida usual": "copo de milk shake",
    "g ou ml": 290,
    "CHO (g)": 51,
    "Calorias": 330
  },
  {
    "Alimento": "Milk shake de chocolate",
    "Medida usual": "copo de milk shake",
    "g ou ml": 290,
    "CHO (g)": 61,
    "Calorias": 350
  },
  {
    "Alimento": "Minestrone (sopa)",
    "Medida usual": "porção",
    "g ou ml": 300,
    "CHO (g)": 23,
    "Calorias": 283
  },
  {
    "Alimento": "Mingau (média)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 37,
    "CHO (g)": 8,
    "Calorias": 50
  },
  {
    "Alimento": "Mini bolacha sabor chocolate Trakinas®",
    "Medida usual": "unidade",
    "g ou ml": 12,
    "CHO (g)": 8,
    "Calorias": 58
  },
  {
    "Alimento": "Mini bomba de avelã Cristallo®",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 6,
    "Calorias": 41
  },
  {
    "Alimento": "Mini Bomba de Caramelo",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 25
  },
  {
    "Alimento": "Mini Bomba de Chocolate",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 2,
    "Calorias": 23
  },
  {
    "Alimento": "Mini bomba de chocolate Cristallo®",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 6,
    "Calorias": 43
  },
  {
    "Alimento": "Mini cenouras",
    "Medida usual": "xícara de café",
    "g ou ml": 125,
    "CHO (g)": 13,
    "Calorias": 54
  },
  {
    "Alimento": "Mini churro de doce de Leite (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 9,
    "Calorias": 56
  },
  {
    "Alimento": "Mini hamburguinho",
    "Medida usual": "unidade",
    "g ou ml": 60,
    "CHO (g)": 15,
    "Calorias": 123
  },
  {
    "Alimento": "Mini hot dog",
    "Medida usual": "unidade",
    "g ou ml": 60,
    "CHO (g)": 15,
    "Calorias": 165
  },
  {
    "Alimento": "Mini kibe frito de cremilly (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 45,
    "CHO (g)": 8,
    "Calorias": 101
  },
  {
    "Alimento": "Mini pizza",
    "Medida usual": "unidade",
    "g ou ml": 60,
    "CHO (g)": 20,
    "Calorias": 182
  },
  {
    "Alimento": "Mini Torta de Limão",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 32
  },
  {
    "Alimento": "Mini Torta de Maçã",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 21
  },
  {
    "Alimento": "Mini Torta de Morango",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 3,
    "Calorias": 21
  },
  {
    "Alimento": "Miojo sabor carne suave Nissin®",
    "Medida usual": "pacote",
    "g ou ml": 85,
    "CHO (g)": 49,
    "Calorias": 374
  },
  {
    "Alimento": "Miojo sabor galinha Nissin®",
    "Medida usual": "pacote",
    "g ou ml": 85,
    "CHO (g)": 50,
    "Calorias": 369
  },
  {
    "Alimento": "Miojo sabor legumes Nissin®",
    "Medida usual": "pacote",
    "g ou ml": 85,
    "CHO (g)": 51,
    "Calorias": 372
  },
  {
    "Alimento": "Miolos",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 30
  },
  {
    "Alimento": "Missoshiro",
    "Medida usual": "porção",
    "g ou ml": 300,
    "CHO (g)": 9,
    "Calorias": 70
  },
  {
    "Alimento": "Misto-quente",
    "Medida usual": "unidade",
    "g ou ml": 85,
    "CHO (g)": 29,
    "Calorias": 283
  },
  {
    "Alimento": "Miúdos de boi (dobradinha, livrelho)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 0,
    "Calorias": 44
  },
  {
    "Alimento": "Mix de frutas desidratadas Frutolla®",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 25,
    "CHO (g)": 6,
    "Calorias": 34
  },
  {
    "Alimento": "Mjadra",
    "Medida usual": "1 porção",
    "g ou ml": 52,
    "CHO (g)": 52,
    "Calorias": 314
  },
  {
    "Alimento": "Moela",
    "Medida usual": "unidade média",
    "g ou ml": 18,
    "CHO (g)": 0,
    "Calorias": 29
  },
  {
    "Alimento": "Molho à bolonhesa",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 22,
    "CHO (g)": 2,
    "Calorias": 41
  },
  {
    "Alimento": "Molho agridoce (Mc’ Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 28,
    "CHO (g)": 10,
    "Calorias": 45
  },
  {
    "Alimento": "Molho barbecue MasterFoods®",
    "Medida usual": "2 colheres de sopa",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 18
  },
  {
    "Alimento": "Molho barbecue (Mc’ Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 28,
    "CHO (g)": 10,
    "Calorias": 46
  },
  {
    "Alimento": "Molho branco",
    "Medida usual": "colher de sopa",
    "g ou ml": 35,
    "CHO (g)": 5,
    "Calorias": 70
  },
  {
    "Alimento": "Molho caipira (Mc’ Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 28,
    "CHO (g)": 6,
    "Calorias": 50
  },
  {
    "Alimento": "Molho caseiro azeite/vinagre",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 13,
    "CHO (g)": 0,
    "Calorias": 113
  },
  {
    "Alimento": "Molho de alho calve",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 55
  },
  {
    "Alimento": "Molho de iogurte",
    "Medida usual": "01 colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 2,
    "Calorias": 12
  },
  {
    "Alimento": "Molho de mostarda light",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Molho de pimenta",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 3,
    "Calorias": 12
  },
  {
    "Alimento": "Molho de queijo com ervas light",
    "Medida usual": "colher de sopa",
    "g ou ml": 13,
    "CHO (g)": 1,
    "Calorias": 8
  },
  {
    "Alimento": "Molho de tomate sabor pizza Pomarola®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Molho de tomate tradicional 340g Fugini®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 3,
    "Calorias": 13
  },
  {
    "Alimento": "Molho de tomate tradicional 340g Tarantella®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Molho de tomate tradicional 340g Pomarola®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Molho inglês",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 6,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Molho madeira Uncle Ben’s®",
    "Medida usual": "colher de sopa",
    "g ou ml": 30,
    "CHO (g)": 3,
    "Calorias": 13
  },
  {
    "Alimento": "Molho para carnes madeira 340g Predilecta®",
    "Medida usual": "3 colheres de sopa",
    "g ou ml": 60,
    "CHO (g)": 5,
    "Calorias": 23
  },
  {
    "Alimento": "Molho para salada tipo caesar Masterfoods®",
    "Medida usual": "colher de sopa",
    "g ou ml": 13,
    "CHO (g)": 2,
    "Calorias": 25
  },
  {
    "Alimento": "Molho pesto Genovese 190 g Barilla®",
    "Medida usual": "3 colheres de sopa",
    "g ou ml": 60,
    "CHO (g)": 2,
    "Calorias": 320
  },
  {
    "Alimento": "Molho pra salada tipo caesar ( Masterfoods®)",
    "Medida usual": "colher de sopa",
    "g ou ml": 13,
    "CHO (g)": 2,
    "Calorias": 25
  },
  {
    "Alimento": "Molho pronto de pesto Hemmer®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 105
  },
  {
    "Alimento": "Molho shoyo",
    "Medida usual": "colher de sopa",
    "g ou ml": 6,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Molho tártaro gourmet",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 105
  },
  {
    "Alimento": "Molho vermelho light",
    "Medida usual": "colher de sobremesa",
    "g ou ml": 14,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Mondongo (dobradinha)",
    "Medida usual": "concha pequena",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 111
  },
  {
    "Alimento": "Moqueca de ovos",
    "Medida usual": "porção",
    "g ou ml": 85,
    "CHO (g)": 3,
    "Calorias": 116
  },
  {
    "Alimento": "Moqueca de peixe",
    "Medida usual": "porção",
    "g ou ml": 185,
    "CHO (g)": 4,
    "Calorias": 218
  },
  {
    "Alimento": "Morango",
    "Medida usual": "unidade média",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Mortadela",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 41
  },
  {
    "Alimento": "Mostarda folha cozida",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 45,
    "CHO (g)": 2,
    "Calorias": 12
  },
  {
    "Alimento": "Mousse de chocolate",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 8,
    "Calorias": 79
  },
  {
    "Alimento": "Mousse de maracujá",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 11,
    "Calorias": 100
  },
  {
    "Alimento": "Mucilon de arroz",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 9,
    "CHO (g)": 8,
    "Calorias": 34
  },
  {
    "Alimento": "Mucilon de milho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 9,
    "CHO (g)": 8,
    "Calorias": 34
  },
  {
    "Alimento": "Muffin de banana Suavipan®",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 20,
    "Calorias": 141
  },
  {
    "Alimento": "Mungunzá",
    "Medida usual": "concha",
    "g ou ml": 150,
    "CHO (g)": 29,
    "Calorias": 150
  },
  {
    "Alimento": "Nabo cozido (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 18,
    "CHO (g)": 1,
    "Calorias": 5
  },
  {
    "Alimento": "Namorado cozido",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 121
  },
  {
    "Alimento": "Néctar de manga Dell Valle®",
    "Medida usual": "caixinha",
    "g ou ml": 200,
    "CHO (g)": 30,
    "Calorias": 118
  },
  {
    "Alimento": "Nectarina",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 49
  },
  {
    "Alimento": "Nescau®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 14,
    "Calorias": 61
  },
  {
    "Alimento": "Nêspera",
    "Medida usual": "unidade grande",
    "g ou ml": 40,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Nesquick em pó Nestlé®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 15,
    "Calorias": 63
  },
  {
    "Alimento": "Nesquick® preparado, caixinha de",
    "Medida usual": "1 und",
    "g ou ml": 200,
    "CHO (g)": 29,
    "Calorias": 170
  },
  {
    "Alimento": "Neston®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 8,
    "CHO (g)": 6,
    "Calorias": 29
  },
  {
    "Alimento": "Nhoque",
    "Medida usual": "01 escumadeira cheia",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 120
  },
  {
    "Alimento": "Niguiri sushi de atum",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 10,
    "Calorias": 59
  },
  {
    "Alimento": "Niguiri sushi de kani",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 10,
    "Calorias": 51
  },
  {
    "Alimento": "Niguiri sushi de salmão",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 10,
    "Calorias": 57
  },
  {
    "Alimento": "Ninho® soleil morango (bebida láctea)",
    "Medida usual": "unidade",
    "g ou ml": 200,
    "CHO (g)": 31,
    "Calorias": 170
  },
  {
    "Alimento": "Nozes",
    "Medida usual": "01 unidade média",
    "g ou ml": 5,
    "CHO (g)": 1,
    "Calorias": 35
  },
  {
    "Alimento": "Nuggets de frango tradicional Sadia®",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 3,
    "Calorias": 53
  },
  {
    "Alimento": "Nuggets de legumes Sadia®",
    "Medida usual": "unidade",
    "g ou ml": 21,
    "CHO (g)": 5,
    "Calorias": 36
  },
  {
    "Alimento": "Nuggets de peixe Sadia®",
    "Medida usual": "unidade",
    "g ou ml": 23,
    "CHO (g)": 4,
    "Calorias": 41
  },
  {
    "Alimento": "Nutella®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 106
  },
  {
    "Alimento": "Óleos vegetais",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 8,
    "CHO (g)": 0,
    "Calorias": 72
  },
  {
    "Alimento": "Olho de Sogra",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 34
  },
  {
    "Alimento": "Omelete",
    "Medida usual": "um ovo",
    "g ou ml": 65,
    "CHO (g)": 2,
    "Calorias": 110
  },
  {
    "Alimento": "Onion rings (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 5,
    "Calorias": 319
  },
  {
    "Alimento": "Ovo de codorna",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 16
  },
  {
    "Alimento": "Ovo de galinha inteiro (cozido)",
    "Medida usual": "unidade média",
    "g ou ml": 45,
    "CHO (g)": 0,
    "Calorias": 71
  },
  {
    "Alimento": "Ovo de galinha, clara cozida",
    "Medida usual": "unidade média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Ovo de galinha, gema cozida",
    "Medida usual": "unidade média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 53
  },
  {
    "Alimento": "Ovo de Páscoa (média)",
    "Medida usual": "1 pedaço médio",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 134
  },
  {
    "Alimento": "Ovo de Páscoa Amandita®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 135
  },
  {
    "Alimento": "Ovo de Páscoa Bis®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 130
  },
  {
    "Alimento": "Ovo de páscoa Diamante Negro®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 16,
    "Calorias": 128
  },
  {
    "Alimento": "Ovo de Páscoa Ferrero Rocher®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 9,
    "Calorias": 151
  },
  {
    "Alimento": "Ovo de Páscoa Kinder Ovo Maxi®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 13,
    "Calorias": 143
  },
  {
    "Alimento": "Ovo de Páscoa Lacta®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 131
  },
  {
    "Alimento": "Ovo de Páscoa Lacta® Diet",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 111
  },
  {
    "Alimento": "Ovo de Páscoa Shot®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 14,
    "Calorias": 134
  },
  {
    "Alimento": "Ovo de Páscoa Sonho de Valsa®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 134
  },
  {
    "Alimento": "Ovomaltine®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 14,
    "CHO (g)": 12,
    "Calorias": 53
  },
  {
    "Alimento": "Paçoca",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 20,
    "Calorias": 115
  },
  {
    "Alimento": "Paçoca diet Airon®",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 7,
    "Calorias": 79
  },
  {
    "Alimento": "Pacu inteiro cru",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 292
  },
  {
    "Alimento": "Paio",
    "Medida usual": "unidade",
    "g ou ml": 160,
    "CHO (g)": 5,
    "Calorias": 363
  },
  {
    "Alimento": "Palmito em conserva",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 3
  },
  {
    "Alimento": "Pamonha",
    "Medida usual": "unidade",
    "g ou ml": 160,
    "CHO (g)": 69,
    "Calorias": 413
  },
  {
    "Alimento": "Pamonha doce",
    "Medida usual": "unidade pequena",
    "g ou ml": 130,
    "CHO (g)": 47,
    "Calorias": 335
  },
  {
    "Alimento": "Panettone frutas",
    "Medida usual": "fatia pequena",
    "g ou ml": 25,
    "CHO (g)": 14,
    "Calorias": 88
  },
  {
    "Alimento": "Panqueca carne",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 18,
    "Calorias": 229
  },
  {
    "Alimento": "Panqueca de batata (Kartoffelpuffer®)",
    "Medida usual": "unidade média",
    "g ou ml": 30,
    "CHO (g)": 22,
    "Calorias": 97
  },
  {
    "Alimento": "Pão alemão integral (Wickbold®)",
    "Medida usual": "1/2 unidade",
    "g ou ml": 50,
    "CHO (g)": 17,
    "Calorias": 99
  },
  {
    "Alimento": "Pão careca doce",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 28,
    "Calorias": 134
  },
  {
    "Alimento": "Pão colonial italiano",
    "Medida usual": "fatia grande",
    "g ou ml": 50,
    "CHO (g)": 27,
    "Calorias": 128
  },
  {
    "Alimento": "Pão com tucumã",
    "Medida usual": "unidade",
    "g ou ml": 85,
    "CHO (g)": 28,
    "Calorias": 241
  },
  {
    "Alimento": "Pão de batata-inglesa",
    "Medida usual": "unidade média",
    "g ou ml": 50,
    "CHO (g)": 29,
    "Calorias": 137
  },
  {
    "Alimento": "Pão de cachorro-quente",
    "Medida usual": "unidade",
    "g ou ml": 58,
    "CHO (g)": 31,
    "Calorias": 170
  },
  {
    "Alimento": "Pão de centeio integral",
    "Medida usual": "unidade média",
    "g ou ml": 50,
    "CHO (g)": 23,
    "Calorias": 116
  },
  {
    "Alimento": "Pão de forma branco",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 12,
    "Calorias": 62
  },
  {
    "Alimento": "Pão de forma de aveia",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 11,
    "Calorias": 59
  },
  {
    "Alimento": "Pão de forma de centeio",
    "Medida usual": "unidade",
    "g ou ml": 27,
    "CHO (g)": 13,
    "Calorias": 75
  },
  {
    "Alimento": "Pão de hambúrguer",
    "Medida usual": "unidade",
    "g ou ml": 70,
    "CHO (g)": 40,
    "Calorias": 188
  },
  {
    "Alimento": "Pão de leite",
    "Medida usual": "unidade",
    "g ou ml": 54,
    "CHO (g)": 30,
    "Calorias": 149
  },
  {
    "Alimento": "Pão de mel",
    "Medida usual": "unidade média",
    "g ou ml": 15,
    "CHO (g)": 13,
    "Calorias": 76
  },
  {
    "Alimento": "Pão de mel doce de leite Cacau Show®",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 30,
    "Calorias": 190
  },
  {
    "Alimento": "Pão de milho caseiro",
    "Medida usual": "fatia média",
    "g ou ml": 70,
    "CHO (g)": 43,
    "Calorias": 200
  },
  {
    "Alimento": "Pão de milho com 50% de farinha de trigo",
    "Medida usual": "unidade",
    "g ou ml": 70,
    "CHO (g)": 42,
    "Calorias": 204
  },
  {
    "Alimento": "Pão de milho de forma Panco®",
    "Medida usual": "unidade",
    "g ou ml": 32,
    "CHO (g)": 19,
    "Calorias": 96
  },
  {
    "Alimento": "Pão de milho industrializado",
    "Medida usual": "unidade",
    "g ou ml": 70,
    "CHO (g)": 43,
    "Calorias": 201
  },
  {
    "Alimento": "Pão de passas",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 26,
    "Calorias": 136
  },
  {
    "Alimento": "Pão de queijo",
    "Medida usual": "unidade pequena",
    "g ou ml": 20,
    "CHO (g)": 9,
    "Calorias": 87
  },
  {
    "Alimento": "Pão de queijo light Forno de Minas®",
    "Medida usual": "unidade média",
    "g ou ml": 27,
    "CHO (g)": 9,
    "Calorias": 55
  },
  {
    "Alimento": "Pão de torresmo",
    "Medida usual": "fatia",
    "g ou ml": 70,
    "CHO (g)": 33,
    "Calorias": 375
  },
  {
    "Alimento": "Pão doce",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 28,
    "Calorias": 134
  },
  {
    "Alimento": "Pão francês",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 28,
    "Calorias": 135
  },
  {
    "Alimento": "Pão italiano",
    "Medida usual": "01 fatia",
    "g ou ml": 50,
    "CHO (g)": 28,
    "Calorias": 125
  },
  {
    "Alimento": "Pão ligth de quinua Sonda®",
    "Medida usual": "2 fatias",
    "g ou ml": 50,
    "CHO (g)": 21,
    "Calorias": 114
  },
  {
    "Alimento": "Pão sírio integral Pita Bread®",
    "Medida usual": "unidade",
    "g ou ml": 53,
    "CHO (g)": 11,
    "Calorias": 53
  },
  {
    "Alimento": "Pão sírio Pita Bread®",
    "Medida usual": "unidade média",
    "g ou ml": 58,
    "CHO (g)": 33,
    "Calorias": 158
  },
  {
    "Alimento": "Papinha de banana e aveia Nestlé®",
    "Medida usual": "pote",
    "g ou ml": 120,
    "CHO (g)": 24,
    "Calorias": 104
  },
  {
    "Alimento": "Papinha de carne com legumes Nestlé®",
    "Medida usual": "pote",
    "g ou ml": 155,
    "CHO (g)": 9,
    "Calorias": 83
  },
  {
    "Alimento": "Pasta de atum",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 2,
    "Calorias": 112
  },
  {
    "Alimento": "Pasta de tofu",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 26,
    "CHO (g)": 2,
    "Calorias": 45
  },
  {
    "Alimento": "Pastel de belém (Habib ́s®)",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 14,
    "Calorias": 107
  },
  {
    "Alimento": "Pastel de carne",
    "Medida usual": "unidade média",
    "g ou ml": 32,
    "CHO (g)": 5,
    "Calorias": 84
  },
  {
    "Alimento": "Pastel de queijo",
    "Medida usual": "unidade média",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 75
  },
  {
    "Alimento": "Pastel de queijo de forno",
    "Medida usual": "unidade grande",
    "g ou ml": 40,
    "CHO (g)": 15,
    "Calorias": 185
  },
  {
    "Alimento": "Pastel português",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 10,
    "Calorias": 149
  },
  {
    "Alimento": "Pastelzinho",
    "Medida usual": "unidade pequena",
    "g ou ml": 8,
    "CHO (g)": 3,
    "Calorias": 24
  },
  {
    "Alimento": "Patê de atum Coqueiro®",
    "Medida usual": "colher de chá",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 17
  },
  {
    "Alimento": "Patê de atum ligth Gomes da Costa®",
    "Medida usual": "colher de chá",
    "g ou ml": 10,
    "CHO (g)": 1,
    "Calorias": 12
  },
  {
    "Alimento": "Patê de Foie Gras, enlatado, defumado",
    "Medida usual": "01 colher de cha cheia",
    "g ou ml": 8,
    "CHO (g)": 0,
    "Calorias": 22
  },
  {
    "Alimento": "Patê de frango com ervas finas Excelsior®",
    "Medida usual": "colher de chá",
    "g ou ml": 10,
    "CHO (g)": 1,
    "Calorias": 20
  },
  {
    "Alimento": "Patê de peito de peru defumado Sadia®",
    "Medida usual": "colher de chá",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 22
  },
  {
    "Alimento": "Patê de salmão Gomes da Costa®",
    "Medida usual": "colher de chá",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Pato no tucupi assado",
    "Medida usual": "sobrecoxa",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 303
  },
  {
    "Alimento": "Pavê de chocolate",
    "Medida usual": "pedaço médio",
    "g ou ml": 85,
    "CHO (g)": 16,
    "Calorias": 154
  },
  {
    "Alimento": "Pavê de chocolate branco Amor aos Pedaços®",
    "Medida usual": "fatia",
    "g ou ml": 60,
    "CHO (g)": 20,
    "Calorias": 208
  },
  {
    "Alimento": "Pave de cholocale ao leite",
    "Medida usual": "2 colheres de copa cheias",
    "g ou ml": 85,
    "CHO (g)": 34,
    "Calorias": 200
  },
  {
    "Alimento": "Pé-de-moleque",
    "Medida usual": "unidade média",
    "g ou ml": 17,
    "CHO (g)": 10,
    "Calorias": 88
  },
  {
    "Alimento": "Pé-de-moleque (Norte)",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 45,
    "Calorias": 336
  },
  {
    "Alimento": "Pé-de-moleque diet Airon®",
    "Medida usual": "unidade média",
    "g ou ml": 14,
    "CHO (g)": 6,
    "Calorias": 61
  },
  {
    "Alimento": "Pé-de-moleque Santa Helena*®",
    "Medida usual": "unidade",
    "g ou ml": 17,
    "CHO (g)": 10,
    "Calorias": 88
  },
  {
    "Alimento": "Peito de peru defumado ligth Sadia®",
    "Medida usual": "fatia",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 21
  },
  {
    "Alimento": "Peito de peru defumado Perdigão®",
    "Medida usual": "fatia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 41
  },
  {
    "Alimento": "Peixe de água doce cozido (média)",
    "Medida usual": "filé médio",
    "g ou ml": 120,
    "CHO (g)": 0,
    "Calorias": 117
  },
  {
    "Alimento": "Peixe do mar cozido (média)",
    "Medida usual": "filé médio",
    "g ou ml": 120,
    "CHO (g)": 0,
    "Calorias": 117
  },
  {
    "Alimento": "Peixe grelhado",
    "Medida usual": "1 posta ou filé",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 180
  },
  {
    "Alimento": "Peixe na telha",
    "Medida usual": "posta média",
    "g ou ml": 230,
    "CHO (g)": 7,
    "Calorias": 262
  },
  {
    "Alimento": "Pepino com casca (picles)",
    "Medida usual": "1/4 xícara de chá",
    "g ou ml": 50,
    "CHO (g)": 2,
    "Calorias": 12
  },
  {
    "Alimento": "Pepino cru",
    "Medida usual": "fatia pequena",
    "g ou ml": 3,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Pequi refogado",
    "Medida usual": "4 unidades médias",
    "g ou ml": 70,
    "CHO (g)": 9,
    "Calorias": 143
  },
  {
    "Alimento": "Pêra crua",
    "Medida usual": "unidade média",
    "g ou ml": 130,
    "CHO (g)": 19,
    "Calorias": 80
  },
  {
    "Alimento": "Pernil assado",
    "Medida usual": "1 fatia",
    "g ou ml": 100,
    "CHO (g)": 1.7,
    "Calorias": 94
  },
  {
    "Alimento": "Pernil suíno temperado seara®",
    "Medida usual": "2 1/2 fatia",
    "g ou ml": 100,
    "CHO (g)": 2,
    "Calorias": 140
  },
  {
    "Alimento": "Peru (carne branca assada)",
    "Medida usual": "pedaço médio",
    "g ou ml": 32,
    "CHO (g)": 0,
    "Calorias": 57
  },
  {
    "Alimento": "Pescada inteira crua",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 111
  },
  {
    "Alimento": "Pêssego amarelo",
    "Medida usual": "unidade média",
    "g ou ml": 60,
    "CHO (g)": 6,
    "Calorias": 29
  },
  {
    "Alimento": "Pessego em calda",
    "Medida usual": "01 metade",
    "g ou ml": 30,
    "CHO (g)": 6,
    "Calorias": 25
  },
  {
    "Alimento": "Picolé abacaxi Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 59,
    "CHO (g)": 16,
    "Calorias": 65
  },
  {
    "Alimento": "Picolé chicabon Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 65,
    "CHO (g)": 19,
    "Calorias": 106
  },
  {
    "Alimento": "Picolé de coco la frutta Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 58,
    "CHO (g)": 13,
    "Calorias": 90
  },
  {
    "Alimento": "Picolé de morango la frutta Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 60,
    "CHO (g)": 8,
    "Calorias": 36
  },
  {
    "Alimento": "Picolé de uva la frutta Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 61,
    "CHO (g)": 15,
    "Calorias": 62
  },
  {
    "Alimento": "Picolé fruttare limão Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 58,
    "CHO (g)": 13,
    "Calorias": 51
  },
  {
    "Alimento": "Picolé mega clássico Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 77,
    "CHO (g)": 22,
    "Calorias": 238
  },
  {
    "Alimento": "Picolé mega trufas Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 77,
    "CHO (g)": 27,
    "Calorias": 258
  },
  {
    "Alimento": "Pimenta-malagueta",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Pimentão",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 13,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Pinhão",
    "Medida usual": "01 unidade média",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 25
  },
  {
    "Alimento": "Pipoca doce",
    "Medida usual": "saco medio",
    "g ou ml": 20,
    "CHO (g)": 20,
    "Calorias": 95
  },
  {
    "Alimento": "Pipoca no óleo/manteiga com sal",
    "Medida usual": "saco médio",
    "g ou ml": 20,
    "CHO (g)": 14,
    "Calorias": 90
  },
  {
    "Alimento": "Pipoca salgada",
    "Medida usual": "saco médio",
    "g ou ml": 20,
    "CHO (g)": 14,
    "Calorias": 90
  },
  {
    "Alimento": "Piquiá",
    "Medida usual": "unidade pequena",
    "g ou ml": 50,
    "CHO (g)": 15,
    "Calorias": 179
  },
  {
    "Alimento": "Pirão de farinha de mandioca",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 9,
    "Calorias": 36
  },
  {
    "Alimento": "Pirarucu",
    "Medida usual": "filé médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 120
  },
  {
    "Alimento": "Pirarucu de casaca",
    "Medida usual": "escumadeira cheia",
    "g ou ml": 110,
    "CHO (g)": 25,
    "Calorias": 293
  },
  {
    "Alimento": "Pirulito",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 19,
    "Calorias": 74
  },
  {
    "Alimento": "Pistache",
    "Medida usual": "unidade",
    "g ou ml": 1,
    "CHO (g)": 0,
    "Calorias": 4
  },
  {
    "Alimento": "Pitanga",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Pitaya",
    "Medida usual": "unidade",
    "g ou ml": 200,
    "CHO (g)": 14,
    "Calorias": 84
  },
  {
    "Alimento": "Pizza Brasileira",
    "Medida usual": "fatia média",
    "g ou ml": 111,
    "CHO (g)": 25,
    "Calorias": 268
  },
  {
    "Alimento": "Pizza Califórnia",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 26,
    "Calorias": 213
  },
  {
    "Alimento": "Pizza de Alcachofra",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 273
  },
  {
    "Alimento": "Pizza de atum",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 258
  },
  {
    "Alimento": "Pizza de bacon",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 288
  },
  {
    "Alimento": "Pizza de bacon com requeijão",
    "Medida usual": "fatia média",
    "g ou ml": 123,
    "CHO (g)": 26,
    "Calorias": 244
  },
  {
    "Alimento": "Pizza de banana com canela",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 40,
    "Calorias": 207
  },
  {
    "Alimento": "Pizza de brigadeiro",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 59,
    "Calorias": 402
  },
  {
    "Alimento": "Pizza de calabresa",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 240
  },
  {
    "Alimento": "Pizza de camarão",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 268
  },
  {
    "Alimento": "Pizza de champignon",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 222
  },
  {
    "Alimento": "Pizza de chocolate ao leite",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 54,
    "Calorias": 483
  },
  {
    "Alimento": "Pizza de chocolate branco",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 41,
    "Calorias": 443
  },
  {
    "Alimento": "Pizza de doce de leite",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 51,
    "Calorias": 423
  },
  {
    "Alimento": "Pizza de Escarola",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 294
  },
  {
    "Alimento": "Pizza de frango",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 229
  },
  {
    "Alimento": "Pizza de frango com catupiry",
    "Medida usual": "fatia média",
    "g ou ml": 111,
    "CHO (g)": 25,
    "Calorias": 274
  },
  {
    "Alimento": "Pizza de marguerita",
    "Medida usual": "fatia média",
    "g ou ml": 119,
    "CHO (g)": 27,
    "Calorias": 274
  },
  {
    "Alimento": "Pizza de mussarela",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 278
  },
  {
    "Alimento": "Pizza de mussarela de búfala, rúcula e tomate seco",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 165
  },
  {
    "Alimento": "Pizza de palmito com mussarela",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 25,
    "Calorias": 220
  },
  {
    "Alimento": "Pizza de pepperoni",
    "Medida usual": "fatia média",
    "g ou ml": 102,
    "CHO (g)": 26,
    "Calorias": 274
  },
  {
    "Alimento": "Pizza de portuguesa",
    "Medida usual": "fatia média",
    "g ou ml": 125,
    "CHO (g)": 24,
    "Calorias": 246
  },
  {
    "Alimento": "Pizza de Prestígio",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 55,
    "Calorias": 420
  },
  {
    "Alimento": "Pizza de quatro queijos",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 277
  },
  {
    "Alimento": "Pizza de Romeu e Julieta",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 266
  },
  {
    "Alimento": "Pizza de Rúcula",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 255
  },
  {
    "Alimento": "Pizza Napolitana",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 207
  },
  {
    "Alimento": "Pizza Toscana",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 227
  },
  {
    "Alimento": "Pizza Vegetariana",
    "Medida usual": "fatia média",
    "g ou ml": 111,
    "CHO (g)": 22,
    "Calorias": 192
  },
  {
    "Alimento": "Polenguinho",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 67
  },
  {
    "Alimento": "Polenta com molho de carne",
    "Medida usual": "escumadeira",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 59
  },
  {
    "Alimento": "Polenta cozida",
    "Medida usual": "pedaço médio",
    "g ou ml": 30,
    "CHO (g)": 3,
    "Calorias": 20
  },
  {
    "Alimento": "Polenta frita",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 18
  },
  {
    "Alimento": "Polenta mole",
    "Medida usual": "01 concha pequena",
    "g ou ml": 100,
    "CHO (g)": 8,
    "Calorias": 59
  },
  {
    "Alimento": "Polpetone a parmeggiana",
    "Medida usual": "01 unidade",
    "g ou ml": 150,
    "CHO (g)": 12,
    "Calorias": 280
  },
  {
    "Alimento": "Polvilho",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 14,
    "Calorias": 56
  },
  {
    "Alimento": "Polvo cru",
    "Medida usual": "porção",
    "g ou ml": 200,
    "CHO (g)": 4,
    "Calorias": 160
  },
  {
    "Alimento": "Porco frito com rodelas de limão",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 311
  },
  {
    "Alimento": "Prato do chef picanha 160g (Bob’s®)",
    "Medida usual": "porção",
    "g ou ml": 300,
    "CHO (g)": 29,
    "Calorias": 608
  },
  {
    "Alimento": "Prato primavera (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 435,
    "CHO (g)": 27,
    "Calorias": 460
  },
  {
    "Alimento": "Prato verão (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 330,
    "CHO (g)": 35,
    "Calorias": 420
  },
  {
    "Alimento": "Premium salad (Mc’Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 3,
    "Calorias": 104
  },
  {
    "Alimento": "Premium salad crispy (Mc’Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 17,
    "Calorias": 317
  },
  {
    "Alimento": "Premium salad grill (Mc’Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 3,
    "Calorias": 227
  },
  {
    "Alimento": "Presunto cozido",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 22
  },
  {
    "Alimento": "Presunto de peru",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Pringles® original",
    "Medida usual": "unidade",
    "g ou ml": 2,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Pringles® sabor cebola",
    "Medida usual": "unidade",
    "g ou ml": 2,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Pudim de leite",
    "Medida usual": "fatia média",
    "g ou ml": 50,
    "CHO (g)": 12,
    "Calorias": 91
  },
  {
    "Alimento": "Pudim de passas",
    "Medida usual": "fatia média",
    "g ou ml": 50,
    "CHO (g)": 14,
    "Calorias": 95
  },
  {
    "Alimento": "Pudim de tapioca",
    "Medida usual": "fatia grande",
    "g ou ml": 110,
    "CHO (g)": 19,
    "Calorias": 263
  },
  {
    "Alimento": "Pudim de tapioca com leite condensado",
    "Medida usual": "fatia grande",
    "g ou ml": 90,
    "CHO (g)": 40,
    "Calorias": 150
  },
  {
    "Alimento": "Pupunha",
    "Medida usual": "unidade média",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 41
  },
  {
    "Alimento": "Purê de batata",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 45,
    "CHO (g)": 8,
    "Calorias": 56
  },
  {
    "Alimento": "Purê de inhame",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 7,
    "Calorias": 49
  },
  {
    "Alimento": "Purê de tomate",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 45,
    "CHO (g)": 5,
    "Calorias": 22
  },
  {
    "Alimento": "Quarteirão (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 35,
    "Calorias": 533
  },
  {
    "Alimento": "Queijadinha de coco",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 9,
    "Calorias": 72
  },
  {
    "Alimento": "Queijo de coalho em espeto",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 100
  },
  {
    "Alimento": "Queijo gorgonzola nacional",
    "Medida usual": "fatia média",
    "g ou ml": 38,
    "CHO (g)": 0,
    "Calorias": 151
  },
  {
    "Alimento": "Queijo mussarela",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 42
  },
  {
    "Alimento": "Queijo parmesão",
    "Medida usual": "01 pedaço pequeno",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 54
  },
  {
    "Alimento": "Queijo parmesão nacional",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 61
  },
  {
    "Alimento": "Queijo prato",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 60
  },
  {
    "Alimento": "Queijo provolone nacional",
    "Medida usual": "fatia média",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 51
  },
  {
    "Alimento": "Queijo roquefort nacional",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 120
  },
  {
    "Alimento": "Queijo suiço",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 120
  },
  {
    "Alimento": "Queijo tipo requeijão",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 89
  },
  {
    "Alimento": "Queijo tipo ricota nacional",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 54
  },
  {
    "Alimento": "Queijo tofu",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 7
  },
  {
    "Alimento": "Queijo-de-minas frescal",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 73
  },
  {
    "Alimento": "Queijo-de-minas frescal light",
    "Medida usual": "fatia média",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 46
  },
  {
    "Alimento": "Quentão",
    "Medida usual": "1/2 copo",
    "g ou ml": 100,
    "CHO (g)": 34,
    "Calorias": 295
  },
  {
    "Alimento": "Quiabo cozido sem sal",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 3,
    "Calorias": 15
  },
  {
    "Alimento": "Quibe assado",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 15,
    "Calorias": 172
  },
  {
    "Alimento": "Quibe frito (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 85,
    "CHO (g)": 14,
    "Calorias": 152
  },
  {
    "Alimento": "Quiche de Presunto e Queijo",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 10,
    "Calorias": 259
  },
  {
    "Alimento": "Quiche de queijo",
    "Medida usual": "01 unidade pequena",
    "g ou ml": 30,
    "CHO (g)": 11,
    "Calorias": 227
  },
  {
    "Alimento": "Quindim",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 15,
    "Calorias": 111
  },
  {
    "Alimento": "Quinua em flocos Mãe Terra®",
    "Medida usual": "1/2 xícara de chá",
    "g ou ml": 40,
    "CHO (g)": 29,
    "Calorias": 159
  },
  {
    "Alimento": "Rã, carne de (desfiada)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 7
  },
  {
    "Alimento": "Rabada crua",
    "Medida usual": "unidade média",
    "g ou ml": 40,
    "CHO (g)": 0,
    "Calorias": 155
  },
  {
    "Alimento": "Rabanada",
    "Medida usual": "unidade média",
    "g ou ml": 60,
    "CHO (g)": 48,
    "Calorias": 249
  },
  {
    "Alimento": "Rapadura",
    "Medida usual": "pedaço médio",
    "g ou ml": 55,
    "CHO (g)": 48,
    "Calorias": 194
  },
  {
    "Alimento": "Ratatouille",
    "Medida usual": "porção",
    "g ou ml": 107,
    "CHO (g)": 6,
    "Calorias": 77
  },
  {
    "Alimento": "Ravióli de carne",
    "Medida usual": "escumadeira",
    "g ou ml": 50,
    "CHO (g)": 26,
    "Calorias": 141
  },
  {
    "Alimento": "Ravióli de mussarela",
    "Medida usual": "01 escumadeira cheia",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 210
  },
  {
    "Alimento": "Ravióli de queijo",
    "Medida usual": "escumadeira",
    "g ou ml": 50,
    "CHO (g)": 19,
    "Calorias": 149
  },
  {
    "Alimento": "Refrigerante",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 24,
    "Calorias": 96
  },
  {
    "Alimento": "Refrigerante citrus (Schweppes®)",
    "Medida usual": "lata",
    "g ou ml": 350,
    "CHO (g)": 42,
    "Calorias": 170
  },
  {
    "Alimento": "Refrigerante dietético",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Repolho cozido (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 1
  },
  {
    "Alimento": "Repolho cru (picado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Requeijão comum",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 0,
    "Calorias": 106
  },
  {
    "Alimento": "Requeijão cremoso",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 106
  },
  {
    "Alimento": "Requeijão cremoso light",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 54
  },
  {
    "Alimento": "Risole de Queijo",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 8,
    "Calorias": 112
  },
  {
    "Alimento": "Risoto",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 5,
    "Calorias": 41
  },
  {
    "Alimento": "Risoto a milanes",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 19,
    "Calorias": 95
  },
  {
    "Alimento": "Risoto de camarão",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 6,
    "Calorias": 45
  },
  {
    "Alimento": "Risoto de frango",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 6,
    "Calorias": 45
  },
  {
    "Alimento": "Roll cake de chocolate",
    "Medida usual": "unidade",
    "g ou ml": 38,
    "CHO (g)": 22,
    "Calorias": 143
  },
  {
    "Alimento": "Romã",
    "Medida usual": "unidade",
    "g ou ml": 150,
    "CHO (g)": 23,
    "Calorias": 84
  },
  {
    "Alimento": "Rosquinhas de leite",
    "Medida usual": "unidade média",
    "g ou ml": 7,
    "CHO (g)": 4,
    "Calorias": 27
  },
  {
    "Alimento": "Sagu",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 17,
    "Calorias": 70
  },
  {
    "Alimento": "Sagu com creme de baunilha",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 37,
    "Calorias": 159
  },
  {
    "Alimento": "Sakemaki",
    "Medida usual": "unidade",
    "g ou ml": 15,
    "CHO (g)": 3,
    "Calorias": 22
  },
  {
    "Alimento": "Salad caesar (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 2,
    "Calorias": 53
  },
  {
    "Alimento": "Salada (Mc’Donalds®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 1,
    "Calorias": 8
  },
  {
    "Alimento": "Salada agadir",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 167
  },
  {
    "Alimento": "Salada Agadir",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 167.23
  },
  {
    "Alimento": "Salada almanara®",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 292
  },
  {
    "Alimento": "Salada Almanara®",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 12,
    "Calorias": 293
  },
  {
    "Alimento": "Salada caesar (Bob’s®)",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 5,
    "Calorias": 74
  },
  {
    "Alimento": "Salada de atum (sanduiche) -Bob’s®",
    "Medida usual": "unidade",
    "g ou ml": 154,
    "CHO (g)": 25,
    "Calorias": 377
  },
  {
    "Alimento": "Salada de batata com maionese",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 38,
    "CHO (g)": 7,
    "Calorias": 58
  },
  {
    "Alimento": "Salada de batatas (Kartoffelsalat®)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 5,
    "Calorias": 82
  },
  {
    "Alimento": "Salada de frango (sanduiche) - Bob’s®",
    "Medida usual": "unidade",
    "g ou ml": 154,
    "CHO (g)": 25,
    "Calorias": 356
  },
  {
    "Alimento": "Salada de frutas",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 3,
    "Calorias": 10
  },
  {
    "Alimento": "Salada de frutas",
    "Medida usual": "01 potinho pequeno",
    "g ou ml": 120,
    "CHO (g)": 18,
    "Calorias": 65
  },
  {
    "Alimento": "Salada de frutas completa",
    "Medida usual": "taça pequena",
    "g ou ml": 100,
    "CHO (g)": 13,
    "Calorias": 52
  },
  {
    "Alimento": "Salada de legumes com maionese",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 35,
    "CHO (g)": 5,
    "Calorias": 34
  },
  {
    "Alimento": "Salada tropical (Bob’s®)",
    "Medida usual": "porção",
    "g ou ml": 99,
    "CHO (g)": 7,
    "Calorias": 26
  },
  {
    "Alimento": "Salada tropical com tiras de hamburguer (Bob’s®)",
    "Medida usual": "porção",
    "g ou ml": 277,
    "CHO (g)": 10,
    "Calorias": 289
  },
  {
    "Alimento": "Salada verde (Burguer King®)",
    "Medida usual": "porção",
    "g ou ml": 0,
    "CHO (g)": 1,
    "Calorias": 115
  },
  {
    "Alimento": "Salame",
    "Medida usual": "fatia média",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 59
  },
  {
    "Alimento": "Salgadinho de soja Jasmine®",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 4,
    "Calorias": 98
  },
  {
    "Alimento": "Salgadinho Pingo d’ouro sabor baicon Elma Chips®",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 11,
    "Calorias": 100
  },
  {
    "Alimento": "Salmão defumado",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 233
  },
  {
    "Alimento": "Salmão grelhado",
    "Medida usual": "1 filé pequeno",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 171
  },
  {
    "Alimento": "Salpicão de frango",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 2,
    "Calorias": 61
  },
  {
    "Alimento": "Salsão/aipo cru",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 3
  },
  {
    "Alimento": "Salsicha comum",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 0,
    "Calorias": 116
  },
  {
    "Alimento": "Salsicha de frango Sadia®",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 1,
    "Calorias": 74
  },
  {
    "Alimento": "Salsicha de peru light Sadia®",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 1,
    "Calorias": 58
  },
  {
    "Alimento": "Salsicha envasada (em conserva)",
    "Medida usual": "unidade média",
    "g ou ml": 35,
    "CHO (g)": 0,
    "Calorias": 64
  },
  {
    "Alimento": "Salsichão",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 312
  },
  {
    "Alimento": "Salsichão (Wurst®)",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 312
  },
  {
    "Alimento": "Sanduíche americano",
    "Medida usual": "unidade média",
    "g ou ml": 190,
    "CHO (g)": 28,
    "Calorias": 278
  },
  {
    "Alimento": "Sanduiche de almondegas (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 379,
    "CHO (g)": 61,
    "Calorias": 498
  },
  {
    "Alimento": "Sanduíche de atum",
    "Medida usual": "unidade média",
    "g ou ml": 120,
    "CHO (g)": 33,
    "Calorias": 372
  },
  {
    "Alimento": "Sanduiche de atum (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 260,
    "CHO (g)": 56,
    "Calorias": 414
  },
  {
    "Alimento": "Sanduiche de BNT (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 237,
    "CHO (g)": 47,
    "Calorias": 420
  },
  {
    "Alimento": "Sanduiche de carne (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 249,
    "CHO (g)": 46,
    "Calorias": 386
  },
  {
    "Alimento": "Sanduiche de churrasco (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 266,
    "CHO (g)": 48,
    "Calorias": 447
  },
  {
    "Alimento": "Sanduíche de frango",
    "Medida usual": "unidade média",
    "g ou ml": 120,
    "CHO (g)": 33,
    "Calorias": 299
  },
  {
    "Alimento": "Sanduiche de frango (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 241,
    "CHO (g)": 46,
    "Calorias": 315
  },
  {
    "Alimento": "Sanduiche de frango defumado c/ cream cheese",
    "Medida usual": "porção de 15cm",
    "g ou ml": 259,
    "CHO (g)": 47,
    "Calorias": 450
  },
  {
    "Alimento": "Sanduiche de frango teriyaki (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 283,
    "CHO (g)": 61,
    "Calorias": 379
  },
  {
    "Alimento": "Sanduiche de frutos do mar (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 260,
    "CHO (g)": 63,
    "Calorias": 413
  },
  {
    "Alimento": "Sanduiche de italiano (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 222,
    "CHO (g)": 47,
    "Calorias": 404
  },
  {
    "Alimento": "Sanduiche de mussarela de búfala (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 261,
    "CHO (g)": 55,
    "Calorias": 450
  },
  {
    "Alimento": "Sanduiche de peito de peru (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 161,
    "CHO (g)": 25,
    "Calorias": 278
  },
  {
    "Alimento": "Sanduiche de peito de peru (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 234,
    "CHO (g)": 47,
    "Calorias": 300
  },
  {
    "Alimento": "Sanduiche de pizza sub (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 250,
    "CHO (g)": 50,
    "Calorias": 418
  },
  {
    "Alimento": "Sanduiche de pizzaiolo (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 215,
    "CHO (g)": 48,
    "Calorias": 331
  },
  {
    "Alimento": "Sanduiche de presunto (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 222,
    "CHO (g)": 46,
    "Calorias": 286
  },
  {
    "Alimento": "Sanduiche de presunto e peito de peru (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 245,
    "CHO (g)": 47,
    "Calorias": 312
  },
  {
    "Alimento": "Sanduiche de rosbife (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 237,
    "CHO (g)": 46,
    "Calorias": 315
  },
  {
    "Alimento": "Sanduiche de subway club TM (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 275,
    "CHO (g)": 47,
    "Calorias": 350
  },
  {
    "Alimento": "Sanduiche de subway melt TM (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 270,
    "CHO (g)": 47,
    "Calorias": 419
  },
  {
    "Alimento": "Sanduíche natural",
    "Medida usual": "unidade média",
    "g ou ml": 120,
    "CHO (g)": 29,
    "Calorias": 265
  },
  {
    "Alimento": "Sanduíche queijo quente",
    "Medida usual": "unidade",
    "g ou ml": 85,
    "CHO (g)": 33,
    "Calorias": 300
  },
  {
    "Alimento": "Sanduiche vegetariano (Subway®)",
    "Medida usual": "porção de 15cm",
    "g ou ml": 177,
    "CHO (g)": 46,
    "Calorias": 239
  },
  {
    "Alimento": "Sapoti",
    "Medida usual": "unidade pequena",
    "g ou ml": 60,
    "CHO (g)": 16,
    "Calorias": 58
  },
  {
    "Alimento": "Saquê",
    "Medida usual": "dose",
    "g ou ml": 50,
    "CHO (g)": 3,
    "Calorias": 11
  },
  {
    "Alimento": "Sardinha assada",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 164
  },
  {
    "Alimento": "Sardinha enlatada em molho de tomate",
    "Medida usual": "unidade média",
    "g ou ml": 33,
    "CHO (g)": 0,
    "Calorias": 63
  },
  {
    "Alimento": "Sardinha enlatada em óleo",
    "Medida usual": "unidade média",
    "g ou ml": 33,
    "CHO (g)": 0,
    "Calorias": 65
  },
  {
    "Alimento": "Sardinha frita",
    "Medida usual": "unidade média",
    "g ou ml": 33,
    "CHO (g)": 1,
    "Calorias": 120
  },
  {
    "Alimento": "Sardinha inteira crua",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 144
  },
  {
    "Alimento": "Sashimi de atum",
    "Medida usual": "fatia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Sashimi de salmão",
    "Medida usual": "fatia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Shitake frito",
    "Medida usual": "01 colher de sopa",
    "g ou ml": 10,
    "CHO (g)": 7,
    "Calorias": 50
  },
  {
    "Alimento": "Shoyo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 12,
    "CHO (g)": 1,
    "Calorias": 9
  },
  {
    "Alimento": "Siri",
    "Medida usual": "unidade pequena",
    "g ou ml": 16,
    "CHO (g)": 0,
    "Calorias": 15
  },
  {
    "Alimento": "Soja cozida",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 17,
    "CHO (g)": 2,
    "Calorias": 29
  },
  {
    "Alimento": "Sopa caldo verde",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 7,
    "Calorias": 80
  },
  {
    "Alimento": "Sopa de cebola (creme)",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 6,
    "Calorias": 58
  },
  {
    "Alimento": "Sopa de cogumelo (creme)",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 12,
    "Calorias": 139
  },
  {
    "Alimento": "Sopa de creme de ervilha enlatada",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 27,
    "Calorias": 152
  },
  {
    "Alimento": "Sopa de ervilha",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 26,
    "Calorias": 165
  },
  {
    "Alimento": "Sopa de espinafre (creme)",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 5,
    "Calorias": 110
  },
  {
    "Alimento": "Sopa de feijão branco",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 18,
    "Calorias": 126
  },
  {
    "Alimento": "Sopa de frango",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 3,
    "Calorias": 46
  },
  {
    "Alimento": "Sopa de legumes com carne",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 8,
    "Calorias": 100
  },
  {
    "Alimento": "Sopa de lentilhas enlatada",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 16,
    "Calorias": 108
  },
  {
    "Alimento": "Sopa de macarrão",
    "Medida usual": "concha média",
    "g ou ml": 130,
    "CHO (g)": 19,
    "Calorias": 132
  },
  {
    "Alimento": "Sopa de milho na mateiga 19g Knorr Quick®",
    "Medida usual": "unidade",
    "g ou ml": 19,
    "CHO (g)": 12,
    "Calorias": 77
  },
  {
    "Alimento": "Sorvete massa de morango Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 186
  },
  {
    "Alimento": "Sorvete (casquinha) baunilha (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 124,
    "CHO (g)": 39,
    "Calorias": 220
  },
  {
    "Alimento": "Sorvete copo light Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 63,
    "CHO (g)": 4,
    "Calorias": 39
  },
  {
    "Alimento": "Sorvete copo sundae morango Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 84,
    "CHO (g)": 25,
    "Calorias": 164
  },
  {
    "Alimento": "Sorvete cornetto brigadeiro Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 79,
    "CHO (g)": 23,
    "Calorias": 239
  },
  {
    "Alimento": "Sorvete cornetto caramelo Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 75,
    "CHO (g)": 28,
    "Calorias": 224
  },
  {
    "Alimento": "Sorvete cornetto crocante Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 72,
    "CHO (g)": 27,
    "Calorias": 247
  },
  {
    "Alimento": "Sorvete de casquinha baunilha (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 32,
    "Calorias": 192
  },
  {
    "Alimento": "Sorvete de casquinha chocolate (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 31,
    "Calorias": 192
  },
  {
    "Alimento": "Sorvete de casquinha mista (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 31,
    "Calorias": 192
  },
  {
    "Alimento": "Sorvete de flocos Nestlé®",
    "Medida usual": "bola",
    "g ou ml": 60,
    "CHO (g)": 14,
    "Calorias": 121
  },
  {
    "Alimento": "Sorvete de frutas",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 15,
    "Calorias": 63
  },
  {
    "Alimento": "Sorvete de massa crocante crunch Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 36,
    "Calorias": 187
  },
  {
    "Alimento": "Sorvete de massa de abacaxi Nestlé®",
    "Medida usual": "bola média",
    "g ou ml": 80,
    "CHO (g)": 27,
    "Calorias": 161
  },
  {
    "Alimento": "Sorvete de massa de chiclete Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 25,
    "Calorias": 195
  },
  {
    "Alimento": "Sorvete de massa de creme Nestlé®",
    "Medida usual": "bola média",
    "g ou ml": 80,
    "CHO (g)": 20,
    "Calorias": 144
  },
  {
    "Alimento": "Sorvete eskibon Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 48,
    "CHO (g)": 12,
    "Calorias": 159
  },
  {
    "Alimento": "Sorvete la fruta Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 108
  },
  {
    "Alimento": "Sorvete massa galak Nestlé®",
    "Medida usual": "bola média",
    "g ou ml": 80,
    "CHO (g)": 20,
    "Calorias": 162
  },
  {
    "Alimento": "Sorvete moça doce de leite Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 181
  },
  {
    "Alimento": "Sorvete moça fiesta brigadeiro Neslté®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 31,
    "Calorias": 221
  },
  {
    "Alimento": "Sorvete prestígio Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 24,
    "Calorias": 229
  },
  {
    "Alimento": "Sorvete sedução manjar branco Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 27,
    "Calorias": 195
  },
  {
    "Alimento": "Sorvete sedução mousse chocolate Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 36,
    "Calorias": 230
  },
  {
    "Alimento": "Sorvete sedução romeu e julieta Nestlé®",
    "Medida usual": "bola grande",
    "g ou ml": 100,
    "CHO (g)": 29,
    "Calorias": 185
  },
  {
    "Alimento": "Sorvete sem parar Nestlé®",
    "Medida usual": "unidade copo",
    "g ou ml": 110,
    "CHO (g)": 39,
    "Calorias": 217
  },
  {
    "Alimento": "Sorvete troppo chocolate Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 79,
    "CHO (g)": 25,
    "Calorias": 224
  },
  {
    "Alimento": "Sorvete troppo crocante Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 76,
    "CHO (g)": 29,
    "Calorias": 229
  },
  {
    "Alimento": "Sorvete troppo flocos Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 76,
    "CHO (g)": 28,
    "Calorias": 214
  },
  {
    "Alimento": "Sorvete troppo morango Nestlé®",
    "Medida usual": "unidade",
    "g ou ml": 79,
    "CHO (g)": 30,
    "Calorias": 942
  },
  {
    "Alimento": "Spaghetti ao sugo",
    "Medida usual": "01 pegador",
    "g ou ml": 110,
    "CHO (g)": 22,
    "Calorias": 170
  },
  {
    "Alimento": "Steak tartare",
    "Medida usual": "01 porção pequena",
    "g ou ml": 100,
    "CHO (g)": 2,
    "Calorias": 199
  },
  {
    "Alimento": "SteakhouseTM burguer (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 57,
    "Calorias": 936
  },
  {
    "Alimento": "SteakhouseTM junior (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 33,
    "Calorias": 560
  },
  {
    "Alimento": "Strogonoff de carne",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 43
  },
  {
    "Alimento": "Strogonoff de frango",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 0,
    "Calorias": 50
  },
  {
    "Alimento": "Strudel de Amêndoas (Hungaria®)",
    "Medida usual": "porção pequena",
    "g ou ml": 100,
    "CHO (g)": 45,
    "Calorias": 285
  },
  {
    "Alimento": "Strudel de Frango com Catupiry (Hungaria®)",
    "Medida usual": "porção pequena",
    "g ou ml": 100,
    "CHO (g)": 31,
    "Calorias": 546
  },
  {
    "Alimento": "Strudel de frango com catupiry Hungaria®",
    "Medida usual": "porção pequena",
    "g ou ml": 100,
    "CHO (g)": 31,
    "Calorias": 546
  },
  {
    "Alimento": "Strudel de maçã",
    "Medida usual": "fatia grande",
    "g ou ml": 220,
    "CHO (g)": 59,
    "Calorias": 396
  },
  {
    "Alimento": "Strudel de Maçã (Hungaria®)",
    "Medida usual": "porção pequena",
    "g ou ml": 100,
    "CHO (g)": 30,
    "Calorias": 157
  },
  {
    "Alimento": "Suco de abacaxi com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 25,
    "Calorias": 103
  },
  {
    "Alimento": "Suco de acerola com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 14,
    "Calorias": 62
  },
  {
    "Alimento": "Suco de laranja (envasado)",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 26,
    "Calorias": 116
  },
  {
    "Alimento": "Suco de laranja (fresco)",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 31,
    "Calorias": 140
  },
  {
    "Alimento": "Suco de laranja Del Valle®",
    "Medida usual": "copo grande",
    "g ou ml": 300,
    "CHO (g)": 29,
    "Calorias": 116
  },
  {
    "Alimento": "Suco de laranja,cenoura sem açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 31,
    "Calorias": 137
  },
  {
    "Alimento": "Suco de mamão com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 22,
    "Calorias": 91
  },
  {
    "Alimento": "Suco de manga com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 23,
    "Calorias": 96
  },
  {
    "Alimento": "Suco de manga light Dell Valle®",
    "Medida usual": "copo",
    "g ou ml": 200,
    "CHO (g)": 9,
    "Calorias": 37
  },
  {
    "Alimento": "Suco de maracujá com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 17,
    "Calorias": 70
  },
  {
    "Alimento": "Suco de melão com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 20,
    "Calorias": 82
  },
  {
    "Alimento": "Suco de morango",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 11,
    "Calorias": 52
  },
  {
    "Alimento": "Suco de morango com açúcar",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 22,
    "Calorias": 96
  },
  {
    "Alimento": "Suco de pessego",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 8,
    "Calorias": 38
  },
  {
    "Alimento": "Suco de tomate",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 11,
    "Calorias": 58
  },
  {
    "Alimento": "Suco de tomate enlatado",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 10,
    "Calorias": 49
  },
  {
    "Alimento": "Suco de uva engarrafado",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 36,
    "Calorias": 151
  },
  {
    "Alimento": "Suco de uva Kapo ®",
    "Medida usual": "caixinha",
    "g ou ml": 200,
    "CHO (g)": 23,
    "Calorias": 106
  },
  {
    "Alimento": "Sucrilhos",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 19
  },
  {
    "Alimento": "Suflê de espinafre",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 55,
    "CHO (g)": 1,
    "Calorias": 89
  },
  {
    "Alimento": "Suflê de legumes",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 55,
    "CHO (g)": 5,
    "Calorias": 70
  },
  {
    "Alimento": "Sundae caramelo (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 51,
    "Calorias": 323
  },
  {
    "Alimento": "Sundae chocolate (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 172,
    "CHO (g)": 80,
    "Calorias": 463
  },
  {
    "Alimento": "Sundae chocolate (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 40,
    "Calorias": 290
  },
  {
    "Alimento": "Sundae morango (Mc’Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 47,
    "Calorias": 292
  },
  {
    "Alimento": "Super McShake coco (Mc’ Donalds®)",
    "Medida usual": "copo pequeno",
    "g ou ml": 300,
    "CHO (g)": 50,
    "Calorias": 312
  },
  {
    "Alimento": "Super McShake flocos (Mc’ Donalds®)",
    "Medida usual": "copo pequeno",
    "g ou ml": 300,
    "CHO (g)": 63,
    "Calorias": 334
  },
  {
    "Alimento": "Super McShake morango (Mc’ Donalds®)",
    "Medida usual": "copo pequeno",
    "g ou ml": 300,
    "CHO (g)": 64,
    "Calorias": 336
  },
  {
    "Alimento": "Sushi",
    "Medida usual": "unidade média",
    "g ou ml": 22,
    "CHO (g)": 14,
    "Calorias": 57
  },
  {
    "Alimento": "Sushi de Atum",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 7,
    "Calorias": 40
  },
  {
    "Alimento": "Sushi de Salmao",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 7,
    "Calorias": 38
  },
  {
    "Alimento": "Suspiro",
    "Medida usual": "unidade média",
    "g ou ml": 10,
    "CHO (g)": 9,
    "Calorias": 38
  },
  {
    "Alimento": "Sustagem",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 16,
    "CHO (g)": 10,
    "Calorias": 62
  },
  {
    "Alimento": "Tablete Alpino® Diet",
    "Medida usual": "unidade",
    "g ou ml": 30,
    "CHO (g)": 17,
    "Calorias": 143
  },
  {
    "Alimento": "Taça Habib’s®",
    "Medida usual": "unidade",
    "g ou ml": 330,
    "CHO (g)": 69,
    "Calorias": 554
  },
  {
    "Alimento": "Tainha",
    "Medida usual": "posta pequena",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 204
  },
  {
    "Alimento": "Tâmara seca",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 7,
    "Calorias": 28
  },
  {
    "Alimento": "Tambaqui (filé cru)",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 151
  },
  {
    "Alimento": "Tangerina",
    "Medida usual": "unidade média",
    "g ou ml": 135,
    "CHO (g)": 15,
    "Calorias": 67
  },
  {
    "Alimento": "Tapioca pronta",
    "Medida usual": "unidade pequena",
    "g ou ml": 100,
    "CHO (g)": 43,
    "Calorias": 174
  },
  {
    "Alimento": "Tapioquinha com queijo e coco ralado",
    "Medida usual": "unidade pequena",
    "g ou ml": 100,
    "CHO (g)": 62,
    "Calorias": 430
  },
  {
    "Alimento": "Tapioquinha com tucumã",
    "Medida usual": "unidade média",
    "g ou ml": 100,
    "CHO (g)": 48,
    "Calorias": 360
  },
  {
    "Alimento": "Tartar de salmão",
    "Medida usual": "unidade",
    "g ou ml": 63,
    "CHO (g)": 1,
    "Calorias": 178
  },
  {
    "Alimento": "Tartar de salmão com molho sour cream",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 5,
    "Calorias": 265
  },
  {
    "Alimento": "Tarte de bacalhau",
    "Medida usual": "unidade média",
    "g ou ml": 90,
    "CHO (g)": 27,
    "Calorias": 282
  },
  {
    "Alimento": "Tatu (carne) recheado com lingüiça",
    "Medida usual": "fatia",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 259
  },
  {
    "Alimento": "Temaki (média)",
    "Medida usual": "unidade",
    "g ou ml": 120,
    "CHO (g)": 24,
    "Calorias": 258
  },
  {
    "Alimento": "Temaki de Atum",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 18,
    "Calorias": 157
  },
  {
    "Alimento": "Temaki de Salmao",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 18,
    "Calorias": 190
  },
  {
    "Alimento": "Tempero Maggi® amaciante de carnes",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 2,
    "Calorias": 14
  },
  {
    "Alimento": "Tempero Maggi® fondor",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 2,
    "Calorias": 14
  },
  {
    "Alimento": "Tender",
    "Medida usual": "01 fatia fina",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 146
  },
  {
    "Alimento": "Terrine ligth (peito de peru)",
    "Medida usual": "porção",
    "g ou ml": 130,
    "CHO (g)": 14,
    "Calorias": 131
  },
  {
    "Alimento": "Tiramissu",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 364
  },
  {
    "Alimento": "Tiramissú de frutas",
    "Medida usual": "taça",
    "g ou ml": 200,
    "CHO (g)": 23,
    "Calorias": 138
  },
  {
    "Alimento": "Tomate, purê de (enlatado)",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 8
  },
  {
    "Alimento": "Top sundae caramelo (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 77,
    "Calorias": 508
  },
  {
    "Alimento": "Top sundae chocolate (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 65,
    "Calorias": 475
  },
  {
    "Alimento": "Top sundae morango (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 73,
    "Calorias": 478
  },
  {
    "Alimento": "Torradas",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 5,
    "Calorias": 25
  },
  {
    "Alimento": "Torradas alho,água e sal Casa Victoriana®",
    "Medida usual": "10 unidades",
    "g ou ml": 30,
    "CHO (g)": 16,
    "Calorias": 150
  },
  {
    "Alimento": "Torradas aperitivo",
    "Medida usual": "01 unidade",
    "g ou ml": 2,
    "CHO (g)": 1,
    "Calorias": 7
  },
  {
    "Alimento": "Torresmo",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 54
  },
  {
    "Alimento": "Torta Alemã",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 16,
    "Calorias": 192
  },
  {
    "Alimento": "Torta de banana (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 34,
    "Calorias": 228
  },
  {
    "Alimento": "Torta de carne",
    "Medida usual": "fatia média",
    "g ou ml": 85,
    "CHO (g)": 16,
    "Calorias": 209
  },
  {
    "Alimento": "Torta de frango",
    "Medida usual": "fatia média",
    "g ou ml": 85,
    "CHO (g)": 16,
    "Calorias": 200
  },
  {
    "Alimento": "Torta de limão",
    "Medida usual": "fatia pequena",
    "g ou ml": 90,
    "CHO (g)": 34,
    "Calorias": 217
  },
  {
    "Alimento": "Torta de maçã (Mc’ Donalds®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 26,
    "Calorias": 198
  },
  {
    "Alimento": "Torta holandesa",
    "Medida usual": "porção pequena",
    "g ou ml": 60,
    "CHO (g)": 22,
    "Calorias": 181
  },
  {
    "Alimento": "Torta mousse de limão Miss Daisy®",
    "Medida usual": "1/8 do pacote",
    "g ou ml": 60,
    "CHO (g)": 16,
    "Calorias": 121
  },
  {
    "Alimento": "Torta quente (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 24,
    "Calorias": 142
  },
  {
    "Alimento": "Tortellini com recheio de carne",
    "Medida usual": "porção",
    "g ou ml": 190,
    "CHO (g)": 33,
    "Calorias": 367
  },
  {
    "Alimento": "Tremoço em conserva",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 3,
    "Calorias": 24
  },
  {
    "Alimento": "Trigo cozido",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 6,
    "Calorias": 28
  },
  {
    "Alimento": "Trigo em grão",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 25,
    "CHO (g)": 20,
    "Calorias": 91
  },
  {
    "Alimento": "Trigo, bolo de",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 36,
    "Calorias": 203
  },
  {
    "Alimento": "Triplo cheese (Bob’s®)",
    "Medida usual": "unidade",
    "g ou ml": 245,
    "CHO (g)": 35,
    "Calorias": 694
  },
  {
    "Alimento": "Trufa de chocolate",
    "Medida usual": "unidade grande",
    "g ou ml": 30,
    "CHO (g)": 15,
    "Calorias": 140
  },
  {
    "Alimento": "Tucumã descascado",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 30,
    "CHO (g)": 2,
    "Calorias": 142
  },
  {
    "Alimento": "Tucunaré (filé cru)",
    "Medida usual": "pedaço médio",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 102
  },
  {
    "Alimento": "Tutu de feijão",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 7,
    "Calorias": 43
  },
  {
    "Alimento": "Uramaki califórnia",
    "Medida usual": "unidade",
    "g ou ml": 20,
    "CHO (g)": 10,
    "Calorias": 47
  },
  {
    "Alimento": "Uramaki salmão",
    "Medida usual": "unidade",
    "g ou ml": 22,
    "CHO (g)": 10,
    "Calorias": 62
  },
  {
    "Alimento": "Uva comum",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Uva do tipo européia",
    "Medida usual": "cacho pequeno",
    "g ou ml": 100,
    "CHO (g)": 18,
    "Calorias": 79
  },
  {
    "Alimento": "Uva itália (uva verde)",
    "Medida usual": "unidade",
    "g ou ml": 8,
    "CHO (g)": 1,
    "Calorias": 6
  },
  {
    "Alimento": "Uva passa",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 18,
    "CHO (g)": 14,
    "Calorias": 55
  },
  {
    "Alimento": "Vaca atolada",
    "Medida usual": "concha média cheia",
    "g ou ml": 100,
    "CHO (g)": 3,
    "Calorias": 259
  },
  {
    "Alimento": "Vagem comum em conserva",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 4
  },
  {
    "Alimento": "Vagem cozida",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 20,
    "CHO (g)": 2,
    "Calorias": 8
  },
  {
    "Alimento": "Vatapá",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 9,
    "Calorias": 127
  },
  {
    "Alimento": "Vinagre",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 10,
    "CHO (g)": 0,
    "Calorias": 2
  },
  {
    "Alimento": "Vinho (média)",
    "Medida usual": "taça",
    "g ou ml": 150,
    "CHO (g)": 6,
    "Calorias": 26
  },
  {
    "Alimento": "Vinho branco",
    "Medida usual": "taça",
    "g ou ml": 150,
    "CHO (g)": 5,
    "Calorias": 21
  },
  {
    "Alimento": "Vinho branco seco",
    "Medida usual": "taça",
    "g ou ml": 150,
    "CHO (g)": 0,
    "Calorias": 99
  },
  {
    "Alimento": "Vinho de jenipapo",
    "Medida usual": "taça",
    "g ou ml": 150,
    "CHO (g)": 38,
    "Calorias": 152
  },
  {
    "Alimento": "Vinho quente",
    "Medida usual": "01 copo",
    "g ou ml": 150,
    "CHO (g)": 24,
    "Calorias": 98
  },
  {
    "Alimento": "Vitamina de fruta com suco",
    "Medida usual": "copo duplo cheio",
    "g ou ml": 240,
    "CHO (g)": 49,
    "Calorias": 223
  },
  {
    "Alimento": "Waffer®- média sabores",
    "Medida usual": "unidade",
    "g ou ml": 7.5,
    "CHO (g)": 3,
    "Calorias": 21
  },
  {
    "Alimento": "Whopper JR® com queijo (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 31,
    "Calorias": 464
  },
  {
    "Alimento": "Whopper® com queijo (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 52,
    "Calorias": 757
  },
  {
    "Alimento": "Whopper® duplo com queijo (Burguer King®)",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 52,
    "Calorias": 978
  },
  {
    "Alimento": "Xinxim de galinha",
    "Medida usual": "porção",
    "g ou ml": 150,
    "CHO (g)": 1,
    "Calorias": 358
  },
  {
    "Alimento": "Yakult®",
    "Medida usual": "unidade",
    "g ou ml": 80,
    "CHO (g)": 11,
    "Calorias": 50
  },
  {
    "Alimento": "Ravióli de carne",
    "Medida usual": "01 escumadeira cheia",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 136
  },
  {
    "Alimento": "Tiramissu",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 21,
    "Calorias": 364
  },
  {
    "Alimento": "Chester",
    "Medida usual": "colher sp ch desfiado",
    "g ou ml": 20,
    "CHO (g)": 0,
    "Calorias": 34
  },
  {
    "Alimento": "Lombo (ao Vinho)",
    "Medida usual": "01 fatia média",
    "g ou ml": 80,
    "CHO (g)": 6,
    "Calorias": 440
  },
  {
    "Alimento": "Maionese de legumes",
    "Medida usual": "01 colher de sopa cheia",
    "g ou ml": 38,
    "CHO (g)": 6,
    "Calorias": 51
  },
  {
    "Alimento": "Queijo provolone",
    "Medida usual": "01 fatia media",
    "g ou ml": 30,
    "CHO (g)": 1,
    "Calorias": 103
  },
  {
    "Alimento": "Coxinha de frango",
    "Medida usual": "unidade grande",
    "g ou ml": 110,
    "CHO (g)": 40,
    "Calorias": 487
  },
  {
    "Alimento": "Croissant de queijo",
    "Medida usual": "unidade média",
    "g ou ml": 80,
    "CHO (g)": 32,
    "Calorias": 328
  },
  {
    "Alimento": "Salgadinhos",
    "Medida usual": "01 unidade pequena",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 44
  },
  {
    "Alimento": "Salmão grelhado",
    "Medida usual": "porção pequena",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 171
  },
  {
    "Alimento": "Uísque",
    "Medida usual": "dose",
    "g ou ml": 50,
    "CHO (g)": 0,
    "Calorias": 120
  },
  {
    "Alimento": "Batata inglesa fritta",
    "Medida usual": "escumadeira media cheia",
    "g ou ml": 65,
    "CHO (g)": 23,
    "Calorias": 182
  },
  {
    "Alimento": "Pão francês",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 29,
    "Calorias": 135
  },
  {
    "Alimento": "Linguiça toscana (Aurora®)",
    "Medida usual": "1/2 unidade",
    "g ou ml": 50,
    "CHO (g)": 1.4,
    "Calorias": 100
  },
  {
    "Alimento": "Salmão grelhado",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0.4,
    "Calorias": 171
  },
  {
    "Alimento": "Carne de boi, lagarto",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 0,
    "Calorias": 117
  },
  {
    "Alimento": "Maionese de legumes",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 40,
    "CHO (g)": 6,
    "Calorias": 51
  },
  {
    "Alimento": "Bala de caramelo",
    "Medida usual": "unidade",
    "g ou ml": 6,
    "CHO (g)": 5,
    "Calorias": 27
  },
  {
    "Alimento": "Alfajor recheado com doce de leite",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 98
  },
  {
    "Alimento": "Algodão doce tuti - frutti Snow Sugar®",
    "Medida usual": "1/2 chícara de chá",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Algodão doce uva Snow Sugar®",
    "Medida usual": "1/2 chícara de chá",
    "g ou ml": 5,
    "CHO (g)": 5,
    "Calorias": 20
  },
  {
    "Alimento": "Baton (chocolate ao leite Garoto®)",
    "Medida usual": "unidade",
    "g ou ml": 16,
    "CHO (g)": 9.2,
    "Calorias": 86
  },
  {
    "Alimento": "Beijinho",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 11,
    "Calorias": 105
  },
  {
    "Alimento": "Bolo de cenoura com chocolate Dr. Oetiker®",
    "Medida usual": "fatia média",
    "g ou ml": 60,
    "CHO (g)": 38,
    "Calorias": 227
  },
  {
    "Alimento": "Manjar branco",
    "Medida usual": "fatia media",
    "g ou ml": 90,
    "CHO (g)": 36,
    "Calorias": 255
  },
  {
    "Alimento": "chocolate suíço 360g (Smooth’n’ creamy®) -Kosher for passover",
    "Medida usual": "2 unidades",
    "g ou ml": 30,
    "CHO (g)": 16,
    "Calorias": 135
  },
  {
    "Alimento": "Sorvete de casquinha chocolate",
    "Medida usual": "unidade",
    "g ou ml": 0,
    "CHO (g)": 31,
    "Calorias": 192
  },
  {
    "Alimento": "Sorvete de frutas",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 50,
    "CHO (g)": 15,
    "Calorias": 63
  },
  {
    "Alimento": "Sorvete de massa de \\bacaxi Nestlé®",
    "Medida usual": "bola média",
    "g ou ml": 80,
    "CHO (g)": 27,
    "Calorias": 161
  },
  {
    "Alimento": "Sorvete eski -bon Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 48,
    "CHO (g)": 12,
    "Calorias": 159
  },
  {
    "Alimento": "Sorvete eski -bon crocante Kibon®",
    "Medida usual": "unidade",
    "g ou ml": 49,
    "CHO (g)": 13,
    "Calorias": 162
  },
  {
    "Alimento": "Bolo de coco",
    "Medida usual": "fatia grande",
    "g ou ml": 100,
    "CHO (g)": 54,
    "Calorias": 317
  },
  {
    "Alimento": "Cocada",
    "Medida usual": "unidade média",
    "g ou ml": 70,
    "CHO (g)": 37,
    "Calorias": 405
  },
  {
    "Alimento": "Creme de amendoim",
    "Medida usual": "unidade",
    "g ou ml": 25,
    "CHO (g)": 17,
    "Calorias": 108
  },
  {
    "Alimento": "Gengibre em pó",
    "Medida usual": "colher de sopa cheia",
    "g ou ml": 15,
    "CHO (g)": 11,
    "Calorias": 52
  },
  {
    "Alimento": "Maçã do amor",
    "Medida usual": "unidade",
    "g ou ml": 100,
    "CHO (g)": 79,
    "Calorias": 314
  },
  {
    "Alimento": "Macaxeira cozida (mandioca)",
    "Medida usual": "pedaço grande",
    "g ou ml": 100,
    "CHO (g)": 30,
    "Calorias": 125
  },
  {
    "Alimento": "Milho verde",
    "Medida usual": "unidade grande",
    "g ou ml": 100,
    "CHO (g)": 29,
    "Calorias": 138
  },
  {
    "Alimento": "Pinhão cozido",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 17
  },
  {
    "Alimento": "Pizza de mussarela de búfala, rúcula etomate seco",
    "Medida usual": "fatia média",
    "g ou ml": 100,
    "CHO (g)": 22,
    "Calorias": 165
  },
  {
    "Alimento": "Algodão doce (Mavalério®)",
    "Medida usual": "embalagem",
    "g ou ml": 35,
    "CHO (g)": 35,
    "Calorias": 140
  },
  {
    "Alimento": "Bala Delícia",
    "Medida usual": "unidade",
    "g ou ml": 5,
    "CHO (g)": 4,
    "Calorias": 20
  },
  {
    "Alimento": "Apfelstrudell® (folheado de maçã)",
    "Medida usual": "porção grande",
    "g ou ml": 220,
    "CHO (g)": 59,
    "Calorias": 396
  },
  {
    "Alimento": "Costela de porco defumada",
    "Medida usual": "pedaço pequeno",
    "g ou ml": 15,
    "CHO (g)": 0,
    "Calorias": 62
  },
  {
    "Alimento": "Couve (“Kraut”)®",
    "Medida usual": "folha média",
    "g ou ml": 20,
    "CHO (g)": 1,
    "Calorias": 10
  },
  {
    "Alimento": "Falafel (bolinho de grâo de bico)",
    "Medida usual": "porção",
    "g ou ml": 100,
    "CHO (g)": 20,
    "Calorias": 155
  },
  {
    "Alimento": "Geléia Hainich",
    "Medida usual": "colher de sopa",
    "g ou ml": 20,
    "CHO (g)": 9,
    "Calorias": 40
  },
  {
    "Alimento": "Kasespatzle® (macarrão com queijo)",
    "Medida usual": "pegador",
    "g ou ml": 130,
    "CHO (g)": 20,
    "Calorias": 198
  },
  {
    "Alimento": "Torta Alemâ",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 16,
    "Calorias": 192
  },
  {
    "Alimento": "Torta Floresta Negra",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 22,
    "Calorias": 133
  },
  {
    "Alimento": "Bolinho de Queijo",
    "Medida usual": "unidade",
    "g ou ml": 50,
    "CHO (g)": 16,
    "Calorias": 137
  },
  {
    "Alimento": "Bolo Floresta Branca com Cereja",
    "Medida usual": "fatia pequena",
    "g ou ml": 50,
    "CHO (g)": 19,
    "Calorias": 183
  },
  {
    "Alimento": "Bombom Flocos",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 52
  },
  {
    "Alimento": "Bombom Prestígio",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 5,
    "Calorias": 51
  },
  {
    "Alimento": "Brigadeiro",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 6,
    "Calorias": 36
  },
  {
    "Alimento": "Brigadeiro diet",
    "Medida usual": "unidade pequena",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 25
  },
  {
    "Alimento": "Coxinha de frango (festa)",
    "Medida usual": "unidade pequena",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 37
  },
  {
    "Alimento": "Croquete de Carne",
    "Medida usual": "unidade grande",
    "g ou ml": 55,
    "CHO (g)": 21,
    "Calorias": 190
  },
  {
    "Alimento": "Enrolado de Presunto e Queijo",
    "Medida usual": "unidade",
    "g ou ml": 40,
    "CHO (g)": 15,
    "Calorias": 114
  },
  {
    "Alimento": "Refrigerante zero",
    "Medida usual": "copo duplo",
    "g ou ml": 240,
    "CHO (g)": 0,
    "Calorias": 0
  },
  {
    "Alimento": "Bombom Alpino®",
    "Medida usual": "unidade",
    "g ou ml": 13,
    "CHO (g)": 8,
    "Calorias": 70
  },
  {
    "Alimento": "Bombom Chokito®",
    "Medida usual": "unidade",
    "g ou ml": 32,
    "CHO (g)": 25,
    "Calorias": 140
  },
  {
    "Alimento": "Bombom Raffaello®",
    "Medida usual": "unidade",
    "g ou ml": 10,
    "CHO (g)": 4,
    "Calorias": 62
  },
  {
    "Alimento": "Chocolate caramelo Twix®",
    "Medida usual": "unidade",
    "g ou ml": 16,
    "CHO (g)": 9,
    "Calorias": 77
  },
  {
    "Alimento": "Ovo de Páscoa Kinder Ovo Maxi ®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 13,
    "Calorias": 143
  },
  {
    "Alimento": "Ovo de Páscoa Lacta Diet®",
    "Medida usual": "porção",
    "g ou ml": 25,
    "CHO (g)": 15,
    "Calorias": 111
  },
  {
    "Alimento": "Coalhada seca natural Alibey ®",
    "Medida usual": "colher de sopa",
    "g ou ml": 15,
    "CHO (g)": 1,
    "Calorias": 19
  },
  {
    "Alimento": "Esfiha de calabresa (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 75,
    "CHO (g)": 17,
    "Calorias": 130
  },
  {
    "Alimento": "Esfiha de frango (Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 75,
    "CHO (g)": 18,
    "Calorias": 115
  },
  {
    "Alimento": "(Habib’s®)",
    "Medida usual": "unidade",
    "g ou ml": 55,
    "CHO (g)": 11,
    "Calorias": 201
  }
];
