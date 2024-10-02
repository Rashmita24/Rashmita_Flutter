import 'package:flutter/material.dart';
class Qus62 extends StatefulWidget {
  const Qus62({super.key});

  @override
  State<Qus62> createState() => _Qus62State();
}

class _Qus62State extends State<Qus62> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.amber[300],
      ),
      body: Column(mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text("Alert DialogBox"),
                  content: Text("Do u want to watch alert dialogbox"),
                  actions: [
                    TextButton(onPressed: () {}, 
                    child: Text("Ok")),
                    TextButton(onPressed: (){},
                    child: Text("Cancel"))
                  ],
                );
              },);
            }, 
            child: Text("Submit")),
          )
        ],
      ),
    );
  }
}