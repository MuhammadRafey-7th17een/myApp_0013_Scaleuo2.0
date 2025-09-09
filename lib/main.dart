import 'package:class_work/cacl_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 0;
  int prev = 0;
  int result = 0;
  String displayNum = " ";
  String prevCmd = "None";
  bool funcInProgress = false;
  int state = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,

        appBar: AppBar(
          backgroundColor: Colors.grey.shade400,
          title: Text("My Calculator App"),
        ),

        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Result: $result", style: TextStyle(fontSize: 32)),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("Previous command $prevCmd")],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.blue, width: 3),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text(displayNum, style: TextStyle(fontSize: 32))],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    label: "1",
                    onPressed: () {
                      num = num * 10 + 1;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "2",
                    onPressed: () {
                      num = num * 10 + 2;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "3",
                    onPressed: () {
                      num = num * 10 + 3;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    label: "4",
                    onPressed: () {
                      num = num * 10 + 4;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "5",
                    onPressed: () {
                      num = num * 10 + 5;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "6",
                    onPressed: () {
                      num = num * 10 + 6;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  CalcButton(
                    label: "7",
                    onPressed: () {
                      num = num * 10 + 7;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "8",
                    onPressed: () {
                      num = num * 10 + 8;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                  CalcButton(
                    label: "9",
                    onPressed: () {
                      num = num * 10 + 9;
                      setState(() {
                        displayNum = num.toString();
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    label: "+",
                    onPressed: () {
                      if (!funcInProgress) {
                        prev = num;
                        num = 0;
                        prevCmd = "+";
                        displayNum = "+";
                        funcInProgress = true;
                        state = 1;
                        setState(() {});
                      }
                    },
                  ),
                  CalcButton(
                    label: "-",
                    onPressed: () {
                      if (!funcInProgress) {
                        prev = num;
                        num = 0;
                        displayNum = "-";
                        prevCmd = "-";
                        funcInProgress = true;
                        state = 2;
                        setState(() {});
                      }
                    },
                  ),
                  CalcButton(
                    label: "x",
                    onPressed: () {
                      if (!funcInProgress) {
                        prev = num;
                        num = 0;
                        displayNum = "x";
                        prevCmd = "x";
                        funcInProgress = true;
                        state = 3;
                        setState(() {});
                      }
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CalcButton(
                    label: "0",
                    onPressed: () {
                      num = num * 10;
                      displayNum = num.toString();
                      setState(() {});
                    },
                  ),
                  CalcButton(
                    label: "=",
                    onPressed: () {
                      if (state == 1) {
                        result = prev + num;
                        state = 0;
                        funcInProgress = false;
                        num = 0;
                        displayNum = num.toString();
                        prevCmd = "None";
                      } else if (state == 2) {
                        result = prev - num;
                        state = 0;
                        funcInProgress = false;
                        num = 0;
                        displayNum = num.toString();
                        prevCmd = "None";
                      } else if (state == 3) {
                        result = prev * num;
                        state = 0;
                        funcInProgress = false;
                        num = 0;
                        displayNum = num.toString();
                        prevCmd = "None";
                      } else {}
                      setState(() {});
                    },
                  ),
                  CalcButton(
                    label: "c",
                    onPressed: () {
                      num = 0;
                      prev = 0;
                      result = 0;
                      displayNum = num.toString();
                      prevCmd = "None";
                      setState(() {});
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
