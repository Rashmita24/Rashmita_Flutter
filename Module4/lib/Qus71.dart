import 'package:flutter/material.dart';
import 'package:flutter_advance_ui/Qus70.dart';
class Qus71 extends StatefulWidget {
  const Qus71({super.key});

  @override
  State<Qus71> createState() => _Qus71State();
}

class _Qus71State extends State<Qus71> {
  Widget mywidget=gallary();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Navigation Drawer"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: mywidget,
      drawer: Drawer(
        child: 
        Column(
          children: [
            Container(
              height: 120,
              color: Colors.teal,
            ),
            ListTile(
              trailing: Icon(Icons.photo_album),
              title: Text("Galary"),
              onTap: () {
                setState(() {
                  mywidget = gallary();
                });
              },
            ),
            ListTile(
              trailing: Icon(Icons.music_note),
              title: Text("Audio"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  mywidget = Audio();
                });
              },
            ),
            ListTile(
              trailing: Icon(Icons.photo_album),
              title: Text("Galary"),
              onTap: () {
                Navigator.pop(context);
                setState(() {
                  mywidget = Video();
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
class gallary extends StatelessWidget {
  const gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Album"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo,size: 50,)
          ],
        ),
      ),
    );
  }
}
class Audio extends StatelessWidget {
  const Audio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note,size: 50,)
          ],
        ),
      ),
    );
  }
}
class Video extends StatelessWidget {
  const Video({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("video"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo,size: 50,)
          ],
        ),
      ),
    );
  }
}