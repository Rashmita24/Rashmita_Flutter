import 'package:flutter/material.dart';
class Qus60_2 extends StatefulWidget {
  const Qus60_2({super.key});

  @override
  State<Qus60_2> createState() => _Qus60_2State();
}

class _Qus60_2State extends State<Qus60_2> {
  int a=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: IconButton(onPressed: (){},
         icon: Icon(Icons.search),
         style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white)
         ),),
         actions: [
          IconButton(onPressed: (){},
           icon: Icon(Icons.favorite_border),
            style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Colors.white)
         ),)
         ],
        backgroundColor: Colors.orange,
      ),
      body: Stack(
        children: [
          Column(
            children: [Container(
                height: 100,
                color: Colors.orange,),
                Container(
                height: 499, decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),),
                    color: Colors.white,
                ),
                
              )
            ],
          ),
          Positioned(left: 50,top: 0,
            child: Container(height: 250,width: 250,
              child: Image.asset("assets/images/food2bg.png"),

            ),
          ),
          Positioned(
            top: 230,
            child: Container(
              child: 
              Column(
                children: [
                  Row(
                    children: 
                    [
                      Center(child: Text("Sei Ua Samun Phrai",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),)),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                    [
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.watch_later_outlined,color: Colors.blue,),
                            Text("50min"),
                          ],
                        ) ,
                      ),SizedBox(width: 20,),
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.star,color: Colors.orange,),
                            Text("4.8"),
                          ],
                        ) ,
                      ),SizedBox(width: 20,),
                      Container(
                        child:Row(
                          children: [
                            Icon(Icons.local_fire_department,color: Colors.red,),
                            Text("325Kcal"),
                          ],
                        ) ,
                      ),
                    ],
                  ),
                  Center(
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [Container(
                          height: 50,width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white,
                            
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Text("\$12",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                                Container(
                                  height: 37,width: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Colors.orange
                                  ),
                                  child: Row(
                                    children: [
                                      SizedBox(width: 15),
                                      Center(child: 
                                      GestureDetector(
                                        onTap: () {
                                          if (a>0) {
                                            --a;
                                          }
                                          setState(() {
                                            
                                          });
                                        },
                                        child: Text("-",style: TextStyle(fontSize: 35),))),
                                      SizedBox(width: 10,),
                                      Container(
                                        height: 35,width: 35,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          color: Colors.white,
                                        ),
                                        child: Center(child: 
                                        Text(a.toString(),style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),)),
                                      ),
                                      SizedBox(width: 5,),
                                      GestureDetector(
                                        onTap: () {
                                          ++a;
                                          setState(() {
                                            
                                          });
                                        },
                                        
                                        child: Text("+",style: TextStyle(fontSize: 20),))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text("Ingredienta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 120,width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/noodlesbg.png"),
                            Text("Noodle"),
                          ],
                        ),
                      ),SizedBox(width: 5,),
                      Container(height: 80,width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/shrimpbg.png"),
                            Text("Shrimp"),
                          ],
                        ),),SizedBox(width: 10,),
                      Container(height: 70,width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/eggbg.png"),
                            Text("egg"),
                          ],
                        ),),
                        SizedBox(width: 5,),
                      Container(height:80,width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30)),
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Image.asset("assets/images/scallionbg.png"),
                            Text("Scallion"),
                          ],
                        ),)
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("About",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                      ],
                  ),
                  Row(
                    children: [
                      Text("A vibrant Thai sausage made with ground chicken,"),
                      ],
                  ),
                   Row(
                    children: [
                      Text("plus its spicy chile dip, from Chef Parnass Savang"),
                      ],
                  ),
                  Row(
                    children: [
                      Text("of Atlanta's Talat Market."),
                      ],
                  ),
                 Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: 220,),
                    Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.orange,
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, 
                          icon: Icon(Icons.shopping_bag_outlined),
                          ),
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white
                            ),
                            child: Center(child: Text("1",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
                          )
                        ],
                      ),
                    )
                  ],
                 )
                  
                ],),
            )
            ),
             ],
      ),
    );
  }
}