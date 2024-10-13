import 'package:flutter/material.dart';
class MyTextfield extends StatelessWidget {
  TextEditingController? controller;
  String? label;
  String? hintText;
  Icon? prefix;
 MyTextfield({super.key, this.controller,this.label,this.hintText,this.prefix});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        obscureText: label=="Password" ? true : false,
        style: const TextStyle(
          color: Colors.teal,),
          decoration: InputDecoration(
            labelText: label,
            hintText: hintText,
            prefix: prefix,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8)
            )
          )
        
      ),
    );
  }
}