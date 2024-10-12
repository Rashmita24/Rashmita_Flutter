
import 'package:flutter/material.dart';
import 'package:offlinedatabase/Screen/Dashboard.dart';
import 'package:offlinedatabase/Student.dart';
import 'package:offlinedatabase/StudentService.dart';

class Editstudent extends StatefulWidget {
  Student student;
  Editstudent({super.key, required this.student});

  @override
  State<Editstudent> createState() => _EditstudentState();
}

class _EditstudentState extends State<Editstudent> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // print("------------>>>> student data : ${widget.student.name}");

    setState(() {
      _nameController.text = widget.student.name!;
      _subjectController.text = widget.student.subject!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Student"),
      ),
      body: Column(
        children: [
          TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              )),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(
                labelText: 'Subject', border: OutlineInputBorder()),
          ),
          ElevatedButton(onPressed: () {
           setState(() {
            
             widget.student.name = _nameController.text;
             widget.student.subject = _subjectController.text;

             var studentService = Studentservice();
             studentService.updateService(widget.student).then((value) {
              print("Student updated");
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyDashboard()));
              });


           });



          }, child: Text("Update"))
        ],
      ),
    );
  }
}