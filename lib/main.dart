import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var input = '';
  var answer = '';

  void calculate() {
    Parser p = Parser();
    String formatted = input.replaceAll("x", "*").replaceAll("÷", "/");
    Expression exp = p.parse(formatted);
    
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    answer = eval.toString();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Center(
            child: Text(
              "Calculator",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ), // AppBar
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      input,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Center(
                    child: Text(
                      answer,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 60
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '1';
                              });
                            },
                            child: const Text('1')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '2';
                              });
                            },
                            child: const Text('2')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '3';
                              });
                            },
                            child: const Text('3')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + ' + ';
                              });
                            },
                            child: const Text('+')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '4';
                              });
                            },
                            child: const Text('4')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '5';
                              });
                            },
                            child: const Text('5')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '6';
                              });
                            },
                            child: const Text('6')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + ' - ';
                              });
                            },
                            child: const Text('--')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '7';
                              });
                            },
                            child: const Text('7')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '8';
                              });
                            },
                            child: const Text('8')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '9';
                              });
                            },
                            child: const Text('9')),
                        ),

                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + ' x ';
                              });
                            },
                            child: const Text('x')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + '0';
                              });
                            },
                            child: const Text('0')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = '';
                                answer = '';
                              });
                            },
                            child: const Text('AC')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                calculate();
                              });
                            },
                            child: const Text('=')),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Center(
                          child: ElevatedButton(
                            style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(const EdgeInsets.all(20)),
                            textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 20, color: Colors.white))),
                            onPressed: () {
                              setState(() {
                                input = input + ' ÷ ';
                              });
                            },
                            child: const Text('÷')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ), // Scaffold
    );// MaterialApp
  }
}
