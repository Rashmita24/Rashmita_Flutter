import 'dart:io';

import 'package:flutter/material.dart';
class Qus76 extends StatefulWidget {
  const Qus76({super.key});

  @override
  State<Qus76> createState() => _Qus76State();
}

class _Qus76State extends State<Qus76> {
  TextEditingController _num1Controller=TextEditingController();
  TextEditingController _num2Controller=TextEditingController();
  int result=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(
                labelText:  "Enter First Number",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(
                labelText:  "Enter Second Number",
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              setState(() {
               result=int.parse(_num1Controller.text)+int.parse(_num2Controller.text);

              });
            }, 
            child: Text("Submit")),
            SizedBox(
              height: 10,
            ),
            Text("Total:$result"),
          ],
        ),
      ),
    );
  }
}