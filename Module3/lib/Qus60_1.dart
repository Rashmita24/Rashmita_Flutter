import 'package:flutter/material.dart';
class Qus60_1 extends StatefulWidget {
  const Qus60_1({super.key});

  @override
  State<Qus60_1> createState() => _Qus60_1State();
}

class _Qus60_1State extends State<Qus60_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 239, 235),
      body: Padding(
        padding: const EdgeInsets.only(left: 15,right: 15,top: 30),
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
            IconButton(onPressed: (){},
             icon: Icon(Icons.arrow_back_ios),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),),
             IconButton(onPressed: (){},
             icon: Icon(Icons.search,),style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.white)),)
          ], ),
          SizedBox(height: 20.0,),
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Text("Restaurant",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Row(
                    children: [
                      Container(height: 35,width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:const Color.fromARGB(255, 180, 177, 177),),
                          child: Center(child: Text("20-30 min",style: TextStyle(color:Colors.white),)),),SizedBox(width: 10.0,),
                          Text("2.4km",style: TextStyle(color:Colors.grey),),SizedBox(width: 10.0,),
                          Text("Restaurant",style: TextStyle(color:Colors.grey),),SizedBox(width: 10.0,),
                    ],),],),
                    SizedBox(width: 20.0,),
                    Container(
                      height: 50,width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white
                      ),
                      child: Image.asset("assets/images/rlogo1bg.png",fit: BoxFit.cover,),
                    ),
            ],),SizedBox(height: 10.0,),
            Row(
              children: [
              Text("Orange sandwich is Delicious"),SizedBox(width: 50,),
              Icon(Icons.star_border_outlined,color: Colors.orange,),
              Text("4.7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
              ],),SizedBox(height: 20,),
              SingleChildScrollView(scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(height: 40,width: 100,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Recommended",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),SizedBox(width: 10,),
                    Container(height: 40,width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Popular",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)),
                    ),SizedBox(width: 10,),
                    Container(height: 40,width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Noodles",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)),
                    ),SizedBox(width: 20,),
                    Container(height: 40,width: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Pizza",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)),
                    ),],),),
                    SizedBox(height: 30,),
                    Container(
                      height: 100,width:300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/food3bg.png"),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Soba Soup",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Text("No.1 in sales",style: TextStyle(fontSize: 14,color: Colors.amber),),
                              Text("\$12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                            ],),SizedBox(width: 60,),
                            Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                              ],
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 100,width:300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/food2bg.png"),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Sei Ua Samun Phrai",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),),
                              Text("No.1 in sales",style: TextStyle(fontSize: 14,color: Colors.amber),),
                              Text("\$12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                            ],),SizedBox(width: 20,),
                            Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                              ],
                            )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 100,width:300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Image.asset("assets/images/pasta1bg.png"),
                          Column(mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ratatoulli Pasta",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                              Text("No.1 in sales",style: TextStyle(fontSize: 14,color: Colors.amber),),
                              Text("\$12",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14),)
                            ],),SizedBox(width: 30,),
                            Column(
                              children: [
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                              ], ),], ),),
                              SizedBox(height: 20,),
                              Row(
                                children: [
                                  Icon(Icons.more_horiz,size: 40,color: Colors.grey,),
                                  SizedBox(width: 200,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,),
                                  style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Colors.amber)),)
                                ],
                              )
          ]
        ),
      ),
        
      
    );
  }
}