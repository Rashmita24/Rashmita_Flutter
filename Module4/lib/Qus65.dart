import 'package:flutter/material.dart';
class Qus65 extends StatefulWidget {
  const Qus65({super.key});

  @override
  State<Qus65> createState() => _Qus65State();
}

class _Qus65State extends State<Qus65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exit Application",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context) {
            return AlertDialog(
              title: Text("Exit Application"),
              content: Text("Do you want to exit from this application"),
              actions: [
                TextButton(onPressed: () {
                  Navigator.of(context).pop();
                }, child: Text("Exit"))
              ],
            );
          },);
        }, child: Text("Exit")),
      )
    );
  }
}