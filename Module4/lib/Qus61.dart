import 'dart:ui';

import 'package:flutter/material.dart';
class Qus61 extends StatefulWidget {
  const Qus61({super.key});

  @override
  State<Qus61> createState() => _Qus61State();
}

class _Qus61State extends State<Qus61> {
  List<String> menuList=[
    "Kaisek",
    "Ramen",
    "Tanuki",
    "Tempura",
    "Sushi",
  ];
  List<String> photoList=[
    "assets/images/food2bg.png",
    "assets/images/food2bg.png",
    "assets/images/food2bg.png",
    "assets/images/food2bg.png",
    "assets/images/food2bg.png"
  ];
  int? currentindex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
    appBar: AppBar(
      backgroundColor: Colors.white,
    ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: 
                MediaQuery.of(context).size.width,
                child: 
                Column(
                  children: [
                    Container(height: 50,
                      color: Colors.amber[400],
                      child: 
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(child: Text("Custom Toolbar",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                          
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: 
                      Row(
                        children: [
                          Text("Menu",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          SizedBox(width: 250,),
                          IconButton(onPressed: () {}, 
                          icon: Icon(Icons.filter_alt_rounded)),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 350,
                          
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            itemCount: menuList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    currentindex = index;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.all(5),
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    color:currentindex ==index ? Colors.amber[400] : const Color.fromARGB(255, 247, 244, 244),
                                  ),
                                  child: Center(child: Text(menuList[index]))),
                              );}
                          
                          ),
                        )
                        
                      ]
                              ),
                    
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}