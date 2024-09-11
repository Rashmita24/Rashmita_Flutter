import 'package:flutter/material.dart';
class Qus56 extends StatefulWidget {
  const Qus56({super.key});

  @override
  State<Qus56> createState() => _Qus56State();
}

class _Qus56State extends State<Qus56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 200,),
            Center(child: Image.asset("assets/images/peacock1.jpeg",height: 120,width: 120,)),
            Row(
              children: [
                Image.asset("assets/images/peacock2.jpeg",height: 100,width: 100,),
                SizedBox(width: 30,),
                Text("Peacock",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 30,),
                Image.asset("assets/images/peacock2.jpeg",height: 100,width: 100,),
              ],
              
            ),
            Image.asset("assets/images/peacock1.jpeg",height: 120,width: 120,)
          ],
        ),
      )
    );
  }
}