import 'package:calculator_app/components/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [

              const SizedBox(
                height: 35,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: SingleChildScrollView(
                    child: Container(
                      height: 100,
                      width: 400,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.all(Radius.circular(2))
                      ),
                      child: Column(
                        children: [
                          const SizedBox(height: 2,),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 3),
                              child: Text(
                                userInput.toString(),
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontFamily: 'Bold'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text(
                                answer.toString(),
                                style: const TextStyle(
                                    fontSize: 25,
                                    color: Colors.green,
                                    fontFamily: 'Bold'),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 71,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            MyButton(
                              title: 'AC',
                              color: Colors.pink,
                              onpress: () {
                                userInput = '';
                                answer = '';
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              title: '+/-',
                              color: const Color(0xffffa00a),
                              onpress: () {
                                userInput += '+/-';
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              title: '%',
                              color: const Color(0xffffa00a),
                              onpress: () {
                                userInput += '%';
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              title: '/',
                              color: const Color(0xffffa00a),
                              onpress: () {
                                userInput += "/";
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MyButton(
                                title: '7',
                                onpress: () {
                                  userInput += '7';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '8',
                                onpress: () {
                                  userInput += '8';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '9',
                                onpress: () {
                                  userInput += '9';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: 'X',
                                color: const Color(0xffffa00a),
                                onpress: () {
                                  userInput += '*';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MyButton(
                                title: '4',
                                onpress: () {
                                  userInput += '4';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '5',
                                onpress: () {
                                  userInput += '5';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '6',
                                onpress: () {
                                  userInput += '6';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '-',
                                color: const Color(0xffffa00a),
                                onpress: () {
                                  userInput += '-';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MyButton(
                                title: '1',
                                onpress: () {
                                  userInput += '1';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '2',
                                onpress: () {
                                  userInput += '2';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '3',
                                onpress: () {
                                  userInput += '3';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              title: '+',
                              color: const Color(0xffffa00a),
                              onpress: () {
                                userInput += '+';
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            MyButton(
                                title: '0',
                                onpress: () {
                                  userInput += '0';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: '.',
                                onpress: () {
                                  userInput += '.';
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                                title: 'DEL',
                                color: Colors.red,
                                onpress: () {
                                  userInput = userInput.substring(
                                      0, userInput.length - 1);
                                  setState(() {});
                                }),
                            const SizedBox(
                              width: 10,
                            ),
                            MyButton(
                              title: '=',
                              color: const Color(0xffffa00a),
                              onpress: () {
                                equalpress();
                                setState(() {});
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void equalpress() {
    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}
