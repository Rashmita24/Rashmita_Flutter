import 'package:flutter/material.dart';
class Qus50 extends StatefulWidget {
  const Qus50({super.key});

  @override
  State<Qus50> createState() => _Qus50State();
}

class _Qus50State extends State<Qus50> {
  TextEditingController _NumberController=TextEditingController();
  String? text;
  String? reversenum;
  void reversenumber(String value){
    setState(() {
      text = value;
      reversenum=value.split('').reversed.join();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reversed Number"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _NumberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Enter a Number",
                hintText: "Number",
              ),
            ),SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              reversenumber(_NumberController.text);
            }, 
            child: Text("Reverse Number")),
            SizedBox(height: 10,),
                Card(
                  color: Colors.white,
                  child: Text("Reverese Number : $reversenum"),
                )
       
          ]
        )
        
        ),
        );
  }
}