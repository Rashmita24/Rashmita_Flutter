//58. Write a program you have taken three seek bar controls. From three Seekbar which Seekbar value changed the background color of device will be changed.
import 'package:flutter/material.dart';
class program58 extends StatefulWidget {
  const program58({super.key});

  @override
  State<program58> createState() => _program58State();
}

class _program58State extends State<program58> {
  double redValue=0.0;
  double greenValue=0.0;
  double blueValue=0.0;
  Color bgcolor=Colors.white;

  void changebgcolor(){
    setState(() {
      Color bgcolor=Color.fromRGBO(
        redValue.toInt(),
        greenValue.toInt(),
        blueValue.toInt(),
        1.0,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      appBar: AppBar(
        backgroundColor: Colors.amber[100],
        title: Text("Background Color"),
      ),
      body: Column(
        children: [
          Container(height: 200,width: 200,
            child: Column(
              children: [
                Text("Red",style: TextStyle(color: Colors.red),),
                SizedBox(height: 15.0,),
                Text("Blue",style: TextStyle(color: Colors.blue),),
                SizedBox(height: 15.0,),
                Text("Green",style: TextStyle(color: Colors.green),),
                SizedBox(height: 15.0,),
              ],
            ),
          ),
          Column(
            children: [
              Slider(value: redValue, 
              min: 1,
              max: 255,
              onChanged:(value) {
                setState(() {
                  redValue=value;
                  changebgcolor();
                });
              },),
              Slider(value: greenValue, 
              min: 1,
              max: 255,
              onChanged: (value) {
                setState(() {
                  greenValue=value;
                  changebgcolor();
                });
              },),
              Slider(value: blueValue,
              min: 1,
              max: 255,
               onChanged: (value) {
                setState(() {
                  blueValue=value;
                  changebgcolor();
                });
              },),
            ],
          )
        ],
      ),
    );
  }
}