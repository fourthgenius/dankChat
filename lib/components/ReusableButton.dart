import 'package:flutter/material.dart';

class ReusableButton extends StatelessWidget {
  String word;
  Color colour;
  Function press;
  ReusableButton(Color color, String text, Function pressed) {
    word = text;
    colour = color;
    press = pressed;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: MaterialButton(
          onPressed: press,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            word,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
