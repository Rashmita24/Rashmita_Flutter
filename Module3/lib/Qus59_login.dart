import 'package:flutter/material.dart';
class Qus59_logiin extends StatefulWidget {
  String? emailid,Password;
  Qus59_logiin({super.key,this.emailid,this.Password});

  @override
  State<Qus59_logiin> createState() => _Qus59_logiinState();
}

class _Qus59_logiinState extends State<Qus59_logiin> {
TextEditingController _emailController=TextEditingController();
TextEditingController _passwdController=TextEditingController();
String? log_mail,log_pw;
bool login=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Log-In",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: Column(
            children: [
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Your Mail Id",
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: _passwdController,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Enter Password",
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  log_mail=_emailController.text.toString();
                  log_pw=_passwdController.text.toString();
                  if (widget.emailid==log_mail && widget.Password==log_pw){
                  login=true;
                  }
                });
                if (login) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login Is SuccessFull")));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter Valid Emailid and Password")));
                }
              }, 
              child: Text("Login")),
            ],
          ),
        ),
      ),
    );
  }
}