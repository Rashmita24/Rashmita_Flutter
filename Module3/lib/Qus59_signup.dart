import 'package:basic_ui_designing/Qus59_login.dart';
import 'package:flutter/material.dart';
class Qus59_signup extends StatefulWidget {
  const Qus59_signup({super.key});

  @override
  State<Qus59_signup> createState() => _Qus59_signupState();
}

class _Qus59_signupState extends State<Qus59_signup> {
  TextEditingController _nameController=TextEditingController();
  TextEditingController _addController=TextEditingController();
  TextEditingController _numController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _pwController =TextEditingController();
  String? _mail,_pw;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign-Up",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Name",
                ),
              ),SizedBox(height: 15,),
              TextFormField(
                controller: _addController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Address",
                ),
              ),SizedBox(height: 15,),
              TextFormField(
                controller: _numController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Number",
                ),
              ),SizedBox(height: 15,),
              TextFormField(
                controller: _mailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your EmailId",
                ),
              ),SizedBox(height: 15,),
              TextFormField(
                controller: _pwController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Password",
                ),
              ),SizedBox(height: 15,),
              ElevatedButton(onPressed: (){
                setState(() {
                  _mail =_mailController.text.toString();
                  _pw=_pwController.text.toString();
                });
                Navigator.push(context, MaterialPageRoute(builder: (context) => Qus59_logiin(
                  emailid: _mail,Password: _pw,
                ),));
              }, 
              child: Text("SignUp"))
            ],
          ),
        ),
      ),
    );
  }
}