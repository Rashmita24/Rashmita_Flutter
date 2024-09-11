import 'package:flutter/material.dart';
class Qus67 extends StatefulWidget {
  const Qus67({super.key});

  @override
  State<Qus67> createState() => _Qus67State();
}

class _Qus67State extends State<Qus67> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Options Menu",style: TextStyle(fontSize:25,fontWeight: FontWeight.bold ),),
        centerTitle: true,
        actions: [
          PopupMenuButton(itemBuilder: (context) => [
            PopupMenuItem(child: Text("Profile"),
            value: "Profile",),
            PopupMenuItem(child: Text("Logout"),
            value: "Logout",),
          ],
          icon: Icon(Icons.more_vert),
          onSelected: (value) {
            switch(value)
            {
              case "Profile":
                print("Profile Selected");
                break;
              case "Logout":
                print("Logout Selected");
                break;
            }
            
          },
          )
        ],
      ),

    );
  }
}