import 'package:flutter/material.dart';
class Qus58 extends StatefulWidget {
  const Qus58({super.key});

  @override
  State<Qus58> createState() => _Qus58State();
}

class _Qus58State extends State<Qus58> {
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
        0.0,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(height: 200,width: 200,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text("Red",style: TextStyle(color: Colors.red,fontSize: 20),),
                    SizedBox(height: 15.0,),
                    Text("Blue",style: TextStyle(color: Colors.blue,fontSize: 20),),
                    SizedBox(height: 15.0,),
                    Text("Green",style: TextStyle(color: Colors.green,fontSize: 20),),
                    SizedBox(height: 15.0,),
                  ],
                ),
              ),
              Column(
            children: [
              Slider(value: redValue, 
              min: 0.0,
              max: 255.0,
              onChanged:(value) {
                setState(() {
                  redValue=value;
                  changebgcolor();
                });
              },),
              Slider(value: greenValue, 
              min: 0.0,
              max: 255.0,
              onChanged: (value) {
                setState(() {
                  greenValue=value;
                  changebgcolor();
                });
              },),
              Slider(value: blueValue,
              min: 0.0,
              max: 255.0,
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
          ),
        ),
    );
  }
}