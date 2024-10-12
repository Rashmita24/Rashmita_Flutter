import 'package:flutter/material.dart';
import 'package:offlinedatabase/Screen/AddStudent.dart';
import 'package:offlinedatabase/Screen/EditStudent.dart';
import 'package:offlinedatabase/Student.dart';
import 'package:offlinedatabase/StudentService.dart';

class MyDashboard extends StatefulWidget {
  const MyDashboard({super.key});

  @override
  State<MyDashboard> createState() => _MyDashboardState();
}

class _MyDashboardState extends State<MyDashboard> {
  List<Student> studentList = [];

  var studentService = Studentservice();
  var studentModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRecordFromDB();
  }

  getRecordFromDB() async {
    studentService = Studentservice();
    var allStudents = await studentService.readService();

    allStudents.forEach((student) {
      studentModel = Student();
      setState(() {
        studentModel.id = student['id'];
        studentModel.name = student['name'];
        studentModel.subject = student['subject'];

        studentList.add(studentModel);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
      ),
      body: ListView.builder(
        itemCount: studentList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text("${studentList[index].name}"),
              subtitle: Text("${studentList[index].subject}"),
              trailing: Wrap(
                children: [
                  IconButton(
                      onPressed: () {
                        print("----------------->>>>${studentList[index].name}",);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Editstudent(student: studentList[index]),
                            ));
                      },
                      icon: Icon(Icons.edit)),
                  IconButton(
                      onPressed: () async {
                        var result = await studentService
                            .deleteService(studentList[index]);
                        print(result);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyDashboard(),
                            ));
                      },
                      icon: Icon(Icons.delete)),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Addstudent(),
                ));
          }),
    );
  }
}