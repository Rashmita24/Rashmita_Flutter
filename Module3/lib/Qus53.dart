import 'package:flutter/material.dart';
class Qus53 extends StatefulWidget {
  const Qus53({super.key});

  @override
  State<Qus53> createState() => _Qus53State();
}

class _Qus53State extends State<Qus53> {
  Color bgcolor=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                setState(() {
                  bgcolor=Colors.blue;
                });
              }, 
              child: Text("Change Background")),
            )
          ],
        ),
      ),
    );
  }
}