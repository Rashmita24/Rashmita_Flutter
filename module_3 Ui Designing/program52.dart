//52. Create an application with radio buttons (Add, Substraction,Multiply, Division) EditText (number1, number2) and print result as
//per user choice from radio button in TextView
import 'package:flutter/material.dart';

class program52 extends StatefulWidget {
  const program52({super.key});

  @override
  State<program52> createState() => _program52State();
}

class _program52State extends State<program52> {
  TextEditingController _num1controller=TextEditingController();
  TextEditingController _num2controller=TextEditingController();
  String? calculation;
  double? total;

  void Calculation(){
double num1=double.tryParse(_num1controller.text) ?? 0.0;
double num2=double.tryParse(_num2controller.text) ?? 0.0;
double result =0.0;

switch(calculation){
  case "Addition" :
    result = num1 + num2;
    break;
  case "Subtraction" :
  result = num1 - num2;
    break;
  case "Multiplication" :
  result = num1 * num2;
    break;
  case "Division" :
    result =num2 !=0 ?num1/num2 :0.0;
    break;
}
setState(() {
  total = result;
});
  } 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(
                    controller: _num1controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter a Number 1",
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: _num2controller,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                      ),
                      hintText: "Enter a Number 2",
                    ),
                  ),
                 
                      Radio(value: "Addition : ", groupValue:calculation, onChanged: (value) {
                        setState(() {
                          calculation = value!;
                        });
                        },),
                   Text("Addition"),
                  
                      Radio(value: "Subtraction : ", groupValue:calculation, onChanged: (value) {
                        setState(() {
                          calculation = value!;
                        });
                      },),
                   Text("Subtraction"),
                  
                       Radio(value: "Multiplication :", groupValue:calculation, onChanged: (value) {
                        setState(() {
                          calculation = value!;
                        });
                        
                        },),
                     Text("Multiplication"),
                   
                       Radio(value: "Division : ", groupValue:calculation, onChanged: (value) {
                        setState(() {
                          calculation = value !;
                        });
                        
                      },),
                    Text("Division"),  
                   SizedBox(
                    height: 20.0,
                   ),
                   ElevatedButton(onPressed:(){
                    setState(() {
                      calculation;
                    });
                   },child: Text("Calculate")),
                   SizedBox(
                    height: 10.0,
                   ),
                   Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: Text("Result :$total"),),
                   
               
                ],),
            ),
          ),
        ),
          );
  }
}