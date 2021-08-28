import 'package:app_tcc_diarioeletronico/components/drawer.dart';
import 'package:app_tcc_diarioeletronico/models/alimento.dart';
import 'package:app_tcc_diarioeletronico/repositorys/alimentosrepository.dart';
import 'package:flutter/material.dart';

class RefeicaoScreen extends StatefulWidget {
  const RefeicaoScreen({Key key}) : super(key: key);

  @override
  _RefeicaoState createState() => _RefeicaoState();
}

class _RefeicaoState extends State<RefeicaoScreen> {
  String dropdownValue = "Selecione";
  static const List<String> _kOptions = <String>[
    'teste1',
    'alimento',
    'caloria',
  ];
  @override
  Widget build(BuildContext context) {
    AlimentoRepository.initList();
    print(AlimentoRepository.listAlimento);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF26A69A),
        title: Text("Refeição"),
      ),
      body: Container(
          child: Column(
        children: [
          DropdownButton<String>(
            value: dropdownValue,
            items: <String>[
              'Selecione',
              'Lanche da Manhã',
              'Café da Manhã',
              'Almoço',
              'Café da Tarde',
              'Jantar',
              'Refeição Extra'
            ].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                dropdownValue = value;
              });
            },
          ),
          Autocomplete<String>(
            optionsBuilder: (TextEditingValue textEditingValue) {
              if (textEditingValue.text == '') {
                return const Iterable<String>.empty();
              }
              return AlimentoRepository.listAlimento.where((alimento) => alimento.Alimento.toLowerCase()
              .contains(textEditingValue.text.toLowerCase()))
              .map((alimentoModel) => alimentoModel.Alimento);
            },
            onSelected: (String selection) {
              print('You just selected $selection');
            },
          )
        ],
      )),
      drawer: Menu(),
    );
  }
}
