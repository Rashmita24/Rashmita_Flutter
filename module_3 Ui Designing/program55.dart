//55. create an application to display Textview when checkbox is checked and hide otherwise
import 'package:flutter/material.dart';
class program55 extends StatefulWidget {
  const program55({super.key});

  @override
  State<program55> createState() => _program55State();
}

class _program55State extends State<program55> {
  bool textview =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Click Here"),
                      
                
                  Checkbox(value: textview, 
                  onChanged: (bool ? value){
                    setState(() {
                      textview = value ?? false;
                    });
                  }),
                      Text("Text Display and Hide"),
                   
                  ],
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Center(
                    child: Visibility(
                      visible: textview,
                      child: SizedBox(
                        height: 150,
                        width: 450,
                        child: Center(child: Card(
                          color: const Color.fromARGB(255, 247, 243, 243),
                            child:Text("This is the First Page of Flutter"),)),
                      )
                      ),),]
              ),
          ),
        ),
      ),
    );
  }
}

