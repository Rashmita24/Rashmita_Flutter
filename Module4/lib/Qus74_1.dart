import 'package:flutter/material.dart';
import 'package:flutter_advance_ui/Qus74_2.dart';
class Qus74_1 extends StatefulWidget {
  const Qus74_1({super.key});

  @override
  State<Qus74_1> createState() => _Qus74_1State();
}

class _Qus74_1State extends State<Qus74_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Activity 1",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Qus74_2(),));
            }, child: Text("Next"))
          ],
        ),
      ),
    );
  }
}