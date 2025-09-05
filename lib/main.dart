import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple.shade100,

        appBar: AppBar(
          shape: Border.all(color: Colors.red.shade300),
          title: Text("Log In Page Work"),
          backgroundColor: Colors.blue.shade200,
        ),

        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: 40),
                  TextField(
                    keyboardType: TextInputType.emailAddress,

                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      label: Text("Enter Email"),
                      hint: Text("abc@gmail.com"),
                    ),
                  ),
                  SizedBox(height: 40),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      ),
                      label: Text("Enter password"),
                      hint: Text("*****"),
                    ),
                  ),
                  SizedBox(height: 30),
                  Image.asset('assests/pexels-niki-2149862550-32487746.jpg'),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
