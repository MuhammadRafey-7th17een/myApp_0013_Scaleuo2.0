import 'package:flutter/material.dart';
import 'package:quiz1/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();
  String displaySign = " ";
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 100),
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blue,
                  child: TextField(controller: _num1),
                ),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 80,
                  child: Center(
                    child: Text(displaySign, style: TextStyle(fontSize: 32)),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: double.infinity,
                  height: 80,
                  color: Colors.blue,
                  child: TextField(controller: _num2),
                ),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Material(
                    child: InkWell(
                      child: Center(
                        child: Text("=", style: TextStyle(fontSize: 32)),
                      ),
                      onTap: () {
                        if (displaySign == "+") {
                          result =
                              double.parse(_num1.text.toString()) +
                              double.parse(_num2.text.toString());
                          setState(() {});
                        } else if (displaySign == "-") {
                          result =
                              double.parse(_num1.text.toString()) -
                              double.parse(_num2.text.toString());
                          setState(() {});
                        } else if (displaySign == "*") {
                          result =
                              double.parse(_num1.text.toString()) *
                              double.parse(_num2.text.toString());
                          setState(() {});
                        } else if (displaySign == "/") {
                          result =
                              double.parse(_num1.text.toString()) /
                              double.parse(_num2.text.toString());
                          setState(() {});
                        }
                      },
                    ),
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  width: 300,
                  height: 80,
                  child: Center(
                    child: Text(
                      result.toString(),
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                ),
                SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    QuizButton(
                      label: "+",
                      onPressed: () {
                        displaySign = "+";
                        setState(() {});
                      },
                    ),
                    QuizButton(
                      label: "-",
                      onPressed: () {
                        displaySign = "-";
                        setState(() {});
                      },
                    ),
                    QuizButton(
                      label: "*",
                      onPressed: () {
                        displaySign = "*";
                        setState(() {});
                      },
                    ),
                    QuizButton(
                      label: "/",
                      onPressed: () {
                        displaySign = "/";
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
