import 'package:flutter/material.dart';
class Qus64 extends StatefulWidget {
  const Qus64({super.key});

  @override
  State<Qus64> createState() => _Qus64State();
}

class _Qus64State extends State<Qus64> {
  List<String> citylist=["Gujarat","Mumbai","Delhi","Hariyana","Punjab","Banglore","Kashmir"];
  String? selectcity;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[200],
        title: Text("Select City"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selectcity!=null ? "Selected City :$selectcity" : "You have no city selected",style: TextStyle(fontSize: 22),),
            ElevatedButton(onPressed: (){
              showDialog(context: context, builder: (context) {
                return AlertDialog(
                  title: Text("Select City"),
                  content: Column(
                    children:  citylist.map((city) {
                  return RadioListTile<String>(
                    title: Text(city),
                    value: city,
                    groupValue: selectcity,
                    onChanged: (String? value) {
                      setState(() {
                        selectcity = value;
                      });
                      Navigator.of(context).pop();
                    },
                  );
                }).toList(),
                  ),
                  actions: [
                    TextButton(onPressed: () {
                      Navigator.of(context).pop();
                    }, child: Text("Cancel"))
                  ],
                );
              },);
            }, 
            child: Text("Select"))
          ],
        ),
      ),
    );
  }
}