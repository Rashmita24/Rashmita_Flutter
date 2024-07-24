import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Program49_1 extends StatefulWidget {
  const Program49_1({super.key});

  @override
  State<Program49_1> createState() => _Program49_1State();
}

class _Program49_1State extends State<Program49_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: Row(
                      children: [
                        Container(
                          height: 150,
                          width: 450,
                          decoration: BoxDecoration(
                            color: Colors.red
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(height: 150,width: 220,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 150,width: 220,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(height: 150,width: 220,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 150,width: 220,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10.0,),
                  Row(
                    children: [
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Container(height: 100,width: 140,
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}