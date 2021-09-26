import 'package:flutter/material.dart';

class Dropdown extends StatelessWidget {
  final String text, error;
  final TextEditingController controller;
  final List<String> options;
  final Function validator;

  Dropdown(
      {Key key,
      this.text,
      this.error,
      this.options,
      this.controller,
      this.validator});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: DropdownButtonFormField(
        iconEnabledColor: Colors.yellow[700],
        items: options.map((String category) {
          return new DropdownMenuItem(
              value: category,
              child: Row(
                children: <Widget>[
                  Text(
                    category,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ],
              ));
        }).toList(),
        onChanged: (newValue) {
          // do other stuff with _category
          controller.text = newValue;
        },
        value: controller.text == '' ? options[0] : controller.text,
        decoration: InputDecoration(
          labelText: text,
          errorText: error,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow[700]),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.yellow[700]),
          ),
          labelStyle: TextStyle(
            color: Colors.black,
          ),
        ),
        validator: (value) => validator(value),
      ),
    );
  }
}
