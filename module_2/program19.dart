/*19. Write a program of to find out the Area of Triangle, Rectangle and
Circle using If Condition.(Must Be Menu Driven)*/

import 'dart:io';
import 'dart:math';

void main(){
  int? choice;
  double base;
  double height;
  double? area;
  print("find Area of :");
  print("press 1 for Traiangle");
  print("press 1 for Rectangle");
  print("press 1 for Circle");
  print("press 1 for Exit");
  choice = int.parse(stdin.readLineSync()!);
  if(choice==1)
{
  print("Enter the base of Triangle:");
  base = double.parse(stdin.readLineSync()!);
  print("Enter the height of Triangle:");
  height = double.parse(stdin.readLineSync()!);
  area=0.5*base*height;
  print("the area of Triangle is :$area");
}else if(choice==2){
  print("Enter the lenth of Rectangle:");
  double lenth=double.parse(stdin.readLineSync()!);
  print("Enter the Width of Rectangle:");
  double Width=double.parse(stdin.readLineSync()!);
  double area =lenth*Width;
  print("Enter the Area of Rectangle:$area");
}else if(choice==3){
  print("Enter the radius of Circle:");
  double radius=double.parse(stdin.readLineSync()!);
  double area = pi*radius * radius;
  print("Enter the Area of Circle :$area");
}else if(choice==exit){
 print("Exit");
}
else{
  print("select a valid Choioce");
}
}





  

  


