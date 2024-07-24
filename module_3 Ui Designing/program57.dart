//57. Write a program in android display screen color which the Color will be select from the radio button.
import 'package:flutter/material.dart';
class program57 extends StatefulWidget {
  const program57({super.key});

  @override
  State<program57> createState() => _program57State();
}

class _program57State extends State<program57> {
  Color bgcolor = Colors.white;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Color Change"),
      ),
      body: Column(children: [
        RadioListTile(
          value: Colors.red, 
          groupValue: bgcolor, 
          onChanged: (value){
          setState(() {
            bgcolor = value!;
          });
        },title: Text("Red"),),
        SizedBox(height: 8.0,),
        RadioListTile(
          value: Colors.green, 
          groupValue: bgcolor, 
          onChanged: (value){
          setState(() {
            bgcolor = value!;
          });
        },title: Text("Green"),),
        SizedBox(height: 8.0,),
        RadioListTile(
          value: Colors.blue, 
          groupValue: bgcolor, 
          onChanged: (value){
          setState(() {
            bgcolor = value!;
          });
        },title: Text("Blue"),),
      ],)
    );
  }
}