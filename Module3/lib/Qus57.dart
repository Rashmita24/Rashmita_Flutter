import 'package:flutter/material.dart';
class Qus57 extends StatefulWidget {
  const Qus57({super.key});

  @override
  State<Qus57> createState() => _Qus57State();
}

class _Qus57State extends State<Qus57> {
  Color bgcolor=Colors.white;
  int? choice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          children: [
          RadioListTile(value: Colors.red, groupValue:bgcolor , onChanged: (Color ? value) {
            setState(() {
              bgcolor =value!;
            });
          },
          title: Text("Red"),),
          RadioListTile(value: Colors.yellow, groupValue:bgcolor , onChanged: (Color ? value) {
            setState(() {
              bgcolor =value!;
            });
          },
          title: Text("Yellow"),),
          RadioListTile(value: Colors.blue, groupValue:bgcolor , onChanged: (Color ? value) {
            setState(() {
              bgcolor =value!;
            });
          },
          title: Text("Blue"),)
          ],
        ),
      ),
    );
  }
}