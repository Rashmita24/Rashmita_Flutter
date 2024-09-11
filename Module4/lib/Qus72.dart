import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
class Qus72 extends StatefulWidget {
  const Qus72({super.key});

  @override
  State<Qus72> createState() => _Qus72State();
}

class _Qus72State extends State<Qus72> {
  Uri dialnum=Uri(scheme: "tel",path: "1234567890");
  Future callnumber()async{
    await launchUrl(dialnum);
  }
  Future directcall()async{
    await FlutterPhoneDirectCaller.callNumber("1234567890");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Launcher",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,),
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton.icon(
                onPressed: (){
                  callnumber();
                }, 
                icon: Icon(Icons.call),
                label: Text("call")),
            )
          ],
        ),
    );
  }
}