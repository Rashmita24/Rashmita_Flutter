import 'package:flutter/material.dart';
class Qus55 extends StatefulWidget {
  const Qus55({super.key});

  @override
  State<Qus55> createState() => _Qus55State();
}

class _Qus55State extends State<Qus55> {
  bool? checkvalue=false;
  void checkboxcheck(bool ? value)
  {
    setState(() {
      checkvalue = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [SizedBox(width: 90,),
                Center(child: Text(" Please click on checkbox!"))
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Checkbox(value:checkvalue , 
                  onChanged: checkboxcheck,
                  ),
                ),
              ],
            ),
            if(checkvalue==true)
            Text("Welcome to flutter"),
          ],
        ),
      ),
    );
  }
}