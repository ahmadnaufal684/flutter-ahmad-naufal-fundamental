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
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text('Result : ',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black))),
          SizedBox(
            height: 30,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: controller1,
                decoration: InputDecoration(
                    labelText: 'Enter first number',
                    filled: true,
                    fillColor: Colors.black12),
              )),
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
              child: TextField(
                controller: controller2,
                decoration: InputDecoration(
                    labelText: 'Enter second number',
                    filled: true,
                    fillColor: Colors.black12),
              )),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('ADD')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('SUBSTRACT')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('MULTIPLY')),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('DIVIDE'))
                ],
              ))
        ],
      ),
    ));
  }
}