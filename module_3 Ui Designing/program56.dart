//Write a program to show four images around Textview.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class program56 extends StatefulWidget {
  const program56({super.key});

  @override
  State<program56> createState() => _program56State();
}

class _program56State extends State<program56> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Images Around text")),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/peacock1.jpeg",
              width: 100,
              height: 100,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("assets/images/peacock2.jpeg",
                    width: 100,
                    height: 100,),
                    Text("Welcome to Real World",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                    Image.asset("assets/images/peacock3.jpeg",
                    width: 100,
                    height: 100,),
                  ],),
              ),
              Center(
                child: SingleChildScrollView(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/peacock4.jpg",
                      width: 100,
                      height: 100,),
                    ],),
                ),), 
            ],),
        ),),
    );
  }
}