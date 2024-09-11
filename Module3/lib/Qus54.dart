import 'package:flutter/material.dart';
class Qus54 extends StatefulWidget {
  const Qus54({super.key});

  @override
  State<Qus54> createState() => _Qus54State();
}

class _Qus54State extends State<Qus54> {
  var fontsize=10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      
        children: [
          Text("Welcome to Flutter Project",style: TextStyle(fontSize: fontsize),),
          SizedBox(height: 30,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                setState(() {
                  fontsize+=2;
                });
              }, 
              child: Text("Increase")),
               SizedBox(width: 30),
               ElevatedButton(onPressed: (){
                setState(() {
                  fontsize-=2;
                });
               }, 
               child: Text("Decrease"))
            ],
          )
        ],
      ),
    );
  }
}