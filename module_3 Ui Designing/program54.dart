//54. create an application to increate font size when plus button click and decrease when minus button click
import 'package:flutter/material.dart';
class program54 extends StatefulWidget {
  const program54({super.key});

  @override
  State<program54> createState() => _program54State();
}

class _program54State extends State<program54> {
  double fontsize = 20.0;
  
  void increasefontsize(){
    setState(() {
      fontsize += 2.0;
    });
  }

  void decreasefontsize(){
    setState(() {
      fontsize -=2.0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 201, 233, 230),
      body:
       Center(
         child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text(" Hello World",style: TextStyle(fontSize: fontsize),)),
              SizedBox(
                height: 10.0),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed:increasefontsize , child: Icon(Icons.add)),
                ElevatedButton(onPressed:decreasefontsize, child: Icon(Icons.remove)),
              ],
            ),
            
          ],
               ),
       )

    );
  }
}