import 'package:flutter/material.dart';
class Qus51_52 extends StatefulWidget {
  const Qus51_52({super.key});

  @override
  State<Qus51_52> createState() => _Qus51_52State();
}

class _Qus51_52State extends State<Qus51_52> {
  TextEditingController _num1Controller=TextEditingController();
  TextEditingController _num2Controller=TextEditingController();
  String? Choice="";
  double result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                TextField(
                  controller: _num1Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter First Number"
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: _num2Controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Second Number",
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RadioListTile(value: "Addition", groupValue: Choice, onChanged: (value) {
                  setState(() {
                    Choice = value.toString();
                  });
                },
                title: Text("Addition",style: TextStyle(fontSize: 20),),),
                SizedBox(height: 10,),
                RadioListTile(value: "Subtraction", groupValue: Choice, onChanged: (value) {
                  setState(() {
                    Choice = value.toString();
                  });
                },
                title: Text("Subtraction",style: TextStyle(fontSize: 20),),),
                SizedBox(height: 10,),
                RadioListTile(value: "Multiplication", groupValue: Choice, onChanged: (value) {
                  setState(() {
                    Choice = value.toString();
                  });
                },
                title: Text("Multiplication",style: TextStyle(fontSize: 20),),),
                SizedBox(height: 10,),
                RadioListTile(value: "Division", groupValue: Choice, onChanged: (value) {
                  setState(() {
                    Choice = value.toString();
                  });
                },
                title: Text("Division",style: TextStyle(fontSize: 20),),),
                
                SizedBox(height: 10,),
                
                ElevatedButton(onPressed: (){
                  setState(() {
                    if (Choice=="Addition") {
                      result = double.parse(_num1Controller.text) + double.parse(_num2Controller.text);
                    }else if(Choice=="Subtraction"){
                      result = double.parse(_num1Controller.text) - double.parse(_num2Controller.text);
                    }else if(Choice=="Multiplication"){
                      result = double.parse(_num1Controller.text) * double.parse(_num2Controller.text);
                    }else if(Choice=="Division"){
                      result = double.parse(_num1Controller.text) / double.parse(_num2Controller.text);
                    }else{
                      result = 0;
                    }
                  });
                }, 
                child: Text("Calculate",style: TextStyle(fontSize: 20),)),
                  SizedBox(height: 10,),
                Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                  ),
                  child: Center(child: Text("Calculation : $result",style: TextStyle(fontSize: 20),)),
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}