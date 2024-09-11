import 'package:flutter/material.dart';
class Qus70 extends StatefulWidget {
  const Qus70({super.key});

  @override
  State<Qus70> createState() => _Qus70State();
}

class _Qus70State extends State<Qus70> {
  int _currentIndex=0;
  List _menulist =[
    gallary(),
    Audio(),
    Video(),
  ];
  void _updateIndex(int Index){
    setState(() {
      _currentIndex=Index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(child: _menulist[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        elevation: 3,
        currentIndex:_currentIndex ,
        fixedColor: Colors.teal,
        //mouseCursor: MouseCursor.defer,
        onTap:_updateIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.photo),label: "gallery"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Audio"),
          BottomNavigationBarItem(icon: Icon(Icons.video_collection),label: "Video"),
          ]),
    );
  }
  
}
class gallary extends StatelessWidget {
  const gallary({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        //title: Text("Gallery",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_album_outlined,size: 200,)
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
        //title: Text("Music",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: 
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.music_note,size: 200,)
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
        //title: Text("Video",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: Center(
        child: 
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(Icons.video_collection,size: 200,)
        ],),
      ),
    );
  }
}