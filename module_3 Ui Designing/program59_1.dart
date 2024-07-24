//59. Sign up Form
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myproject/module3/program59_2.dart';
class mysignupform extends StatefulWidget {
  const mysignupform({super.key});

  @override
  State<mysignupform> createState() => _mysignupformState();
}

class _mysignupformState extends State<mysignupform> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController =TextEditingController();
  TextEditingController _emailController =TextEditingController();
  TextEditingController _numController =TextEditingController();
  TextEditingController _pwController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(child: Text("SignUp",style: TextStyle(fontSize: 26,fontWeight: FontWeight.bold,color: Colors.white),)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                            controller: _usernameController ,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a User Name",
                              labelText: "User Name",
                              prefixIcon: Icon(Icons.person)
                            ),
                            validator: (value) {
                              if (value==null || value.isEmpty) {
                                return "Please Enter a User Name";
                              }
                              return null;
                            },
                            ),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Email",
                  labelText: "Enter a Email Id",
                  prefixIcon: Icon(Icons.email),
                ),
                validator:
                 (value) {
                  if (value==null || value.isEmpty) {
                    return "Please Enter Your Email id";
                  }else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)){
                  return "Please Enter Valid Email Id";
                }
                return null;
                }
                ),
                SizedBox(height: 10.0,),
                TextFormField(
                  controller: _numController,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: " Mobile Number",
                  labelText: "Enter Mobile Number",
                  prefixIcon: Icon(Icons.phone)
                ),),
                 SizedBox(height: 10.0,),
                TextFormField(
                  controller: _pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: " Password",
                  labelText: "Enter Password",
                  prefixIcon: Icon(Icons.password),
                ),
                validator: (value) {
                  if (value==null || value.isEmpty) {
                    return "Please Enter a Password";
                  }else if(value.length!<=8){
                    return "Password must be 8 Characters";
                  }
                  return null;                
                  },
                ),
                SizedBox(height: 30.0,),
                ElevatedButton(onPressed:() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => program59_2(),));
                }, 
                child: Text("Submit"))
            ],
          ),
        ),
      ),
      ),
    );
  }
}




