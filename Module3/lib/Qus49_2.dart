import 'package:flutter/material.dart';
class Qus49_2 extends StatefulWidget {
  const Qus49_2({super.key});

  @override
  State<Qus49_2> createState() => _Qus49_2State();
}

class _Qus49_2State extends State<Qus49_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(height:250,width:360,
                  child: 
                  Image.asset("assets/images/oeschinensee-swimming.jpg",fit: BoxFit.cover,),
                )
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Oeschinen Lake Campground",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                    Text("Kandersteg, Switzerland",style: TextStyle(fontSize: 18,color: Colors.grey),)
                  ],
                ),
                Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,width: 50,
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.red,),
                          Text("41",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,width: 100,
                  child: Column(
                    children: [
                      Icon(Icons.call,color: Colors.blue,size: 30,),
                      Text("Call",style: TextStyle(color: Colors.blue,fontSize: 20),)
                    ],
                  ),
                ),
                Container(height: 100,width: 100,
                  child: Column(
                    children: [
                      Icon(Icons.arrow_outward,color: Colors.blue,size: 30,),
                      Text("Route",style: TextStyle(color: Colors.blue,fontSize: 20),)
                    ],
                  ),),
                Container(height: 100,width: 100,
                  child: Column(
                    children: [
                      Icon(Icons.share,color: Colors.blue,size: 30,),
                      Text("Share",style: TextStyle(color: Colors.blue,fontSize: 20),)
                    ],
                  ),)
              ],
            ),
            SizedBox(height: 10,),
            Text("Oeschinensee is accessible by foot from Kandersteg within 1.5 hours. The cable car operates in summer and winter season daily from mornings till evenings - non stop. In summer enjoy swimming in the lake, boat rides on the blue and clear water or just have fun with the toboggan run at the top station of the cable car. Several hotels around the lake offer rooms in summer. Restaurants are open in winter and summer. The region belongs to the Unesco heritage Jungfrau-Aletsch.",style: TextStyle(fontSize: 14),)
          ],
        ),
      ),
    );
  }
}