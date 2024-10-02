import 'package:flutter/material.dart';
class Qus63 extends StatefulWidget {
  const Qus63({super.key});

  @override
  State<Qus63> createState() => _Qus63State();
}

class _Qus63State extends State<Qus63> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Dialog"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Center(
              child: ElevatedButton(onPressed: () {
                showDialog(context: context, 
                builder: (context) {
                  return AlertDialog(
                    title: Text("Alert Dialog"),
                    content: Text("Select Valid Option"),
                    actions: [
                      TextButton(onPressed: () {
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Center(child: Text("Positive"))));
                      }, child: Text("Positive")),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Center(child: Text("Negative"))));
                      }, 
                      child: Text("Negative")),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Center(child: Text("Neutral"))));
                      }, 
                      child: Text("Neutral"))
                    ],
                  );
                },);
              }, child: Text("Submit")),
            )
          ],
        ),
      )
    );
  }
}
