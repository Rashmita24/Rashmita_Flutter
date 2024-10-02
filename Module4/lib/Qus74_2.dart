import 'package:flutter/material.dart';
class Qus74_2 extends StatefulWidget {
  const Qus74_2({super.key});

  @override
  State<Qus74_2> createState() => _Qus74_2State();
}

class _Qus74_2State extends State<Qus74_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 2",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Flutter Page",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}