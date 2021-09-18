import 'package:flutter/material.dart';

class Autocomplete extends StatelessWidget {
  final String text, error;
  final TextEditingController controller;
  final List<String> options;

  Autocomplete({Key key, this.text, this.error, this.options, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}
