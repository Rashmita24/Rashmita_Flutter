//login page
import 'package:flutter/material.dart';
class program59_2 extends StatefulWidget {
  
  const program59_2({super.key});

  @override
  State<program59_2> createState() => _program59_2State();
}

class _program59_2State extends State<program59_2> {
  final _formKey=GlobalKey<FormState>();
  TextEditingController _usernameController=TextEditingController();
  TextEditingController _pwController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      centerTitle: true,
      backgroundColor: Colors.deepPurpleAccent,
      title: Text("log-in Form",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          child:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "User Name",
                    hintText: "Emter a User Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if (value==null || value.isEmpty) {
                      return "Please enter Your User Nanme";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 16.0,),
                TextFormField(
                  controller: _pwController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter Password",
                    prefixIcon: Icon(Icons.password)
                  ),
                  validator: (value) {
                    if (value==null || value.isEmpty) {
                      return "Please enter Your Password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0,),
                ElevatedButton(onPressed: (){}, child: Text("Login"))
              ],
            ),
          ) ),
      ),
    );
  }
}