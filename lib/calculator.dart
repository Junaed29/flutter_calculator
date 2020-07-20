import 'package:flutter/material.dart';
import 'dart:developer' as d;

class Calculator extends StatefulWidget {
  Calculator({Key key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String initialText = "Enter Number";

  String showResult = "";
  int firstNumber = 0;
  String firstNumberString = "0";

  int secondNumber = 0;
  String secondNumberString = "0";
  int result = 0;

  void calculation(String text) {
    if (text == "c") {
      showResult = "";
      firstNumber = 0;
      firstNumberString = "0";

      secondNumber = 0;
      secondNumberString = "0";
      result = 0;
    } else {
      showResult = showResult + text;

    }

    setState(() {
      initialText = showResult;
      d.log(initialText,name: "Junaed");
    });
  }

  Widget customButton(String text) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25),
        child: Text(
          text,
          style: TextStyle(fontSize: 25.0),
        ),
        onPressed: () => calculation(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                child: Text(
                  initialText,
                  style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              customButton("7"),
              customButton("8"),
              customButton("9"),
              customButton("/"),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("4"),
              customButton("5"),
              customButton("6"),
              customButton("*"),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("1"),
              customButton("2"),
              customButton("3"),
              customButton("-"),
            ],
          ),
          Row(
            children: <Widget>[
              customButton("c"),
              customButton("0"),
              customButton("="),
              customButton("+"),
            ],
          )
        ],
      ),
    );
  }
}
