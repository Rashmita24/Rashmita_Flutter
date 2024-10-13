import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myfirebase/Customwidget/customwidget1.dart';
import 'package:myfirebase/Dashboard.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _email=TextEditingController();
  final TextEditingController _pw=TextEditingController();
  Future<void>loginUser(String? email,String? password)async{
    try {
      UserCredential userCredential=await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email!, password: password!);
      User? user = userCredential.user;
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Dashboard(user: user,),));
    }
  catch (e) {
      showDialog(context: context, 
      builder: (context) {
        return AlertDialog(
          title: const Text("Login Failed"),
          content: Text("$e"),
          actions: [
            ElevatedButton(onPressed: (){
              _email.clear();
              _pw.clear();
              Navigator.pop(context);
            }, 
            child: const Text("Ok"))
          ],
          );
      },);
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal[600],
      ),
      body: Column(
        children: [
          MyTextfield(
            controller: _email,
             label: "Email", 
             hintText: "Enter Your Emailid", 
             prefix: const Icon(Icons.email)),
             const SizedBox(
              height: 10,
             ),
             MyTextfield(
              controller: _pw, 
              label: "Password", 
              hintText: "Enter a Password", 
              prefix: const Icon(Icons.password)),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: (){
                setState(() {
                  loginUser(_email.text.toString(), 
                  _pw.text.toString());
                });
              } ,
              child: const Text("Login"))
        ],
      ),

        
          
    );
  }
}