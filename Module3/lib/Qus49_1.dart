import 'package:flutter/material.dart';
class Qus49_1 extends StatefulWidget {
  const Qus49_1({super.key});

  @override
  State<Qus49_1> createState() => _Qus49_1State();
}

class _Qus49_1State extends State<Qus49_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 385,
              height: 190,
              color: Colors.red,
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              
              children: [
                Container(
                  width: 178,
                  height: 190,
                  color: Colors.blue,
                ),SizedBox(width: 2),
                Container(
                  width: 178,
                  height: 190,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  width: 178,
                  height: 190,
                  color: Colors.blue,
                ),SizedBox(width: 2,),
                Container(
                  width: 178,
                  height: 190,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),SizedBox(width: 2,),
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),SizedBox(width: 2,),
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),SizedBox(width: 2,),
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),SizedBox(width: 2,),
                Container(
                  width: 117,
                  height: 125,
                  color: Colors.yellow,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}