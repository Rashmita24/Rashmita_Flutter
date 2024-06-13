/*16. Write a program user enter the 5 subjects mark. You have to make a
total and find the percentage. percentage > 75 you have to print
“Distinction” percentage > 60 and percentage <= 75 you have to
print “First class” percentage >50 and percentage <= 60 you have to
print “Second class” percentage > 35 and percentage <= 50 you have to
print “Pass class” Otherwise print “Fail”*/
import 'dart:io';
void main(){
  int? sub1;
  int? sub2;
  int? sub3;
  int? sub4;
  int? sub5;
  int? Total;
  print("Enter a Eglish Subject Marks :");
  sub1 =int.parse(stdin.readLineSync()!);
  print("Enter a MAth Subject Marks :");
  sub2 =int.parse(stdin.readLineSync()!);
  print("Enter a Science Subject Marks :");
  sub3 =int.parse(stdin.readLineSync()!);
  print("Enter a SS Subject Marks :");
  sub4 = int.parse(stdin.readLineSync()!);
  print("Enter a Computer Subject Marks :");
  sub5 = int.parse(stdin.readLineSync()!);
  Total =sub1+sub2+sub3+sub4+sub5;
  print("Total Marks :$Total");
  double? percentage;
  percentage=Total/5; 
  print("$percentage");
  if(percentage>75){
    print("Distinction");
  }else if(percentage>60 && percentage<=75){
  print("First Class");
  }else if(percentage>50 && percentage<=65){
    print("Second class");
  }else if(percentage>35 && percentage<=50){
    print("PAss Class");
  }else{
    print("Fail");
  }
}
