//51. Create an application to input 2 numbers from user and all numbers between those 2 numbers in next activity.

import 'package:flutter/material.dart';
class program51 extends StatefulWidget {
  const program51({super.key});

  @override
  State<program51> createState() => _program51State();
}

class _program51State extends State<program51> {
  TextEditingController _num1Controller=TextEditingController();
  TextEditingController _num2Controller=TextEditingController();
  double? result =0.0;
  String calculation="Addition"; 
  
  void choicecalc(){
    double number1=double.tryParse(_num1Controller.text)??0;
    double number2=double.tryParse(_num2Controller.text)??0;
    switch (calculation) {
      case "Addition":
      result = number1+number2;
      break;
      case "Subtraction":
      result=number2-number1;
      break;
      case "Multiplication":
      result = number1*number2;
      break;
      case "Division":
      result=number2/number1;
      break;
      default:
      result=0;
      break;
    }
    setState(() {
      result;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Input 2 Numbers")),
      ),
body: Padding(
  padding: const EdgeInsets.all(8.0),
  child: SingleChildScrollView(
    child: Column(
      children: [
        TextField(
          controller: _num1Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter a Numebr 1",
          ),
        ),
        SizedBox(height: 10.0,),
        TextField(
          controller: _num2Controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Enter a Numebr 2",
          ),
        ),
        SizedBox(height: 10.0,),
        RadioListTile(value: "Addition", 
        tileColor: Colors.teal,
        activeColor: Color.fromARGB(255, 17, 8, 19),
        groupValue: calculation, 
        onChanged: (value){
          setState(() {
            calculation=value!;
          });
        },title: Text("Addition")),
        SizedBox(height: 10.0,),
        RadioListTile(value: "Subtraction", 
        tileColor: Colors.teal,
        activeColor: Color.fromARGB(255, 17, 8, 19),
        groupValue: calculation, 
        onChanged: (value){
          setState(() {
            calculation=value!;
          });
        },title: Text("Subtraction")),
        SizedBox(height: 10.0,),
        RadioListTile(value: "Multiplication", 
        tileColor: Colors.teal,
        activeColor: Color.fromARGB(255, 17, 8, 19),
        groupValue: calculation,
        onChanged: (value){
          setState(() {
            calculation=value!;
          });
        },title: Text("multiplication")),
         SizedBox(height: 10.0,),
         RadioListTile(value: "Division",
         tileColor: Colors.teal,
        activeColor: Color.fromARGB(255, 17, 8, 19),
         groupValue: calculation,
         onChanged: (value){
          setState(() {
            calculation=value!;
          });
         },title: Text("Division")),
        SizedBox(height: 10.0,),
        ElevatedButton(onPressed: (){
          setState(() {
            choicecalc();
          });
        }, child: Text("Submit")),
        SizedBox(height: 10.0,),
        SizedBox(
          height: 50.0,
          width: 150,
          child: Card(
            color: Color.fromARGB(255, 240, 236, 236),
            child: Center(child: Text("Result : $result")),),
        ),
      ],
    ),
  ),
),
    );
  }
}
 
