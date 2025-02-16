import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
//import 'package:expressions/expressions.dart';
// import 'package:fast_expressions/fast_expressions.dart';

class MyButton extends StatelessWidget {
  String title;
  Color color;
  VoidCallback onpress;

  MyButton({
    super.key,
    required this.title,
    this.color = const Color(0xffa5a5a5),
    required this.onpress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: InkWell(
          onTap: onpress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 25, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }
}
