//50. Create an application to take input number from user and print its reverse number in TextField
import 'package:flutter/material.dart';
class program50 extends StatefulWidget {
  const program50({super.key});

  @override
  State<program50> createState() => _program50State();
}

class _program50State extends State<program50> {
  TextEditingController _textController = TextEditingController();
  String? Reversenum="";
  String? InputText="";
  void reversenumber(String value){
    setState(() {
      InputText=value;
      Reversenum=value.split("").reversed.join();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Reverse Number")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Eneter a Number",
              ),
            ),
            SizedBox(height: 10.0,),   
            ElevatedButton(onPressed: (){
              reversenumber(_textController.text);
            }, child: Text("Reverse Number"))  ,
            SizedBox(height: 10.0,)   ,
            SizedBox(height: 50,width: 250,
            child: Card(
              color: const Color.fromARGB(255, 241, 240, 240),
              child: Center(child: Text("Reverse Number:$Reversenum")),),)
            ],
        ),
      ),
    );
  }
}
