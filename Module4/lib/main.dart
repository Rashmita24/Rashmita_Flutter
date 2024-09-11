import 'package:flutter/material.dart';
import 'package:flutter_advance_ui/Qus64.dart';
import 'package:flutter_advance_ui/Qus65.dart';
import 'package:flutter_advance_ui/Qus67.dart';
import 'package:flutter_advance_ui/Qus70.dart';
import 'package:flutter_advance_ui/Qus74_1.dart';
import 'package:flutter_advance_ui/Qus76.dart';

void main(){
    runApp(const MyApp());
  }
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Qus76(),

    );
    
  }
}


//flutter run -d chrome --web-renderer html