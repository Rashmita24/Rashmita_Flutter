import 'package:flutter/material.dart';
import 'package:offlinedatabase/Screen/Dashboard.dart';
import 'package:offlinedatabase/Student.dart';
import 'package:offlinedatabase/StudentService.dart';


class Addstudent extends StatefulWidget {
  const Addstudent({super.key});

  @override
  State<Addstudent> createState() => _AddstudentState();
}

class _AddstudentState extends State<Addstudent> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _subjectController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Student"),
      ),
      body: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: "Enter Name",
              labelText: "Name",
            ),
          ),
          TextField(
            controller: _subjectController,
            decoration: InputDecoration(
              hintText: "Enter Subject",
              labelText: "Subject",
            ),
          ),
          ElevatedButton(
            onPressed: () {
              var student = Student();

              setState(() async {
                student.name = _nameController.text.toString();
                student.subject = _subjectController.text.toString();

                var studentService = Studentservice();

                var result = await studentService.insertService(student);

                print("---- result $result");

                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyDashboard(),
                    ));
              });
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}