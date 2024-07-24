//53. create an application to change background when button is clicked
import 'package:flutter/material.dart';

class program53 extends StatefulWidget {
  const program53({super.key});

  @override
  State<program53> createState() => _program53State();
}

class _program53State extends State<program53> {
  
  Color bgcolor = Colors.white;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: Center(
        child:
               ElevatedButton(onPressed: (){
                  setState(() {
                    bgcolor=Colors.teal;
                  });
                }, child: Text("BackGround Change")),
      ),
    );
  }
}