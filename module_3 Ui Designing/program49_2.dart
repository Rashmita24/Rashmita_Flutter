//49. Create below screens 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class program49 extends StatefulWidget {
  const program49({super.key});

  @override
  State<program49> createState() => _program49State();
}

class _program49State extends State<program49> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          children: [
            SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/lake_2.jpg"),
            ),
           SingleChildScrollView(
                    child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Oeschinen Lake campground",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Text("Kanderstag , Switzerland",style: TextStyle(fontSize: 14),)
                      ],
                    ),
                  
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.red,),
                          Text("41",style: TextStyle(fontSize: 20),),
                        ],
                      ),
                ],
              ),
            ),
            const Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Icon(Icons.call,color:Colors.blue,),
                      Text("CALL",style: TextStyle(fontSize: 18,color: Colors.blue),)
                    ],
                  ),
                ),
                SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Icon(Icons.alt_route_sharp,color:Colors.blue,),
                      Text("ROUTE",style: TextStyle(fontSize: 18,color: Colors.blue),)
                    ],
                  ),
                ),SizedBox(
                  height: 70,
                  width: 70,
                  child: Column(
                    children: [
                      Icon(Icons.share,color:Colors.blue,),
                      Text("SHARE",style: TextStyle(fontSize: 18,color: Colors.blue),)
                    ],
                  ),
                )
              ],
            ),
            const SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
                children:<Text>[
                  Text("Lake Oeschinen lies at the foot of the Baumlistep in Betneso Alps.Situated 1,578 meters above sea level,it is one of the larger Alpines Lakes.Agondola ride from Knadersteg,followed by a half-hour walk through pastures and pine forest,leads you to the lake,which warms to 20 degrees Celcius in the summer.Activities enjoyed here include rowing and riding the summer toboggan run."),
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