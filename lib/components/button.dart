import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Widget widget;
  final double width, heigth;
  final Function onPress;

  Button({this.widget, this.width, this.heigth, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5),
      child: SizedBox(
        width: width,
        height: heigth,
        child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(
                      color: Colors.teal[300],
                    )),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.teal[300],
              ),
            ),
            child: widget,
            onPressed: onPress),
      ),
    );
  }
}
