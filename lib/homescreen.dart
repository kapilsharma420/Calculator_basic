//import 'package:calculator/components/mybutton.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:flutter/material.dart';
import 'package:raju/components/mybutton.dart';
import 'dart:core';

void main() {
  runApp(HomeScreen());
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userinput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SafeArea(
            child: Column(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          userinput.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      Text(
                        answer.toString(),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                )),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyButton(
                            title: 'A/C',
                            onpress: () {
                              userinput = '';
                              answer = '';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '+/-',
                            onpress: () {
                              userinput += '+/-';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '%',
                            onpress: () {
                              userinput += '%';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '/',
                            color: Color(0xffffa00a),
                            onpress: () {
                              userinput += '/';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyButton(
                            title: '7',
                            onpress: () {
                              userinput += '7';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '8',
                            onpress: () {
                              userinput += '8';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '9',
                            onpress: () {
                              userinput += '9';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '*',
                            color: Color(0xffffa00a),
                            onpress: () {
                              userinput += '*';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyButton(
                            title: '4',
                            onpress: () {
                              userinput += '4';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '5',
                            onpress: () {
                              userinput += '5';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '6',
                            onpress: () {
                              userinput += '6';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '-',
                            color: Color(0xffffa00a),
                            onpress: () {
                              userinput += '-';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyButton(
                            title: '1',
                            onpress: () {
                              userinput += '1';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '2',
                            onpress: () {
                              userinput += '2';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '3',
                            onpress: () {
                              userinput += '3';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '+',
                            color: Color(0xffffa00a),
                            onpress: () {
                              userinput += '+';
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MyButton(
                            title: '0',
                            onpress: () {
                              userinput += '0';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '.',
                            onpress: () {
                              userinput += '.';
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: 'DEL',
                            onpress: () {
                              userinput =
                                  userinput.substring(0, userinput.length - 1);
                              setState(() {});
                            },
                          ),
                          MyButton(
                            title: '=',
                            color: Color(0xffffa00a),
                            onpress: () {
                              equalpress();
                              setState(() {});
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void equalpress() {
  //   Parser p = Parser();
  //   Expression expression = p.parse(userinput);
  //   ContextModel contextModel = ContextModel();
  //   double eval = expression.evaluate(EvaluationType.REAL, contextModel);
  //   answer = eval.toString();
  // }

  void equalpress() {
    var parser = Parser();
    var expression = parser.parse(userinput);
    var context = ContextModel();
    answer = expression.evaluate(EvaluationType.REAL, context).toString();
  }
}
