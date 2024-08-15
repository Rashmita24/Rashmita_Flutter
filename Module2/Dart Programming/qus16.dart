/* Write a program user enter the 5 subjects mark. You have to make a
total and find the percentage. percentage > 75 you have to print
“Distinction” percentage > 60 and percentage <= 75 you have to
print “First class” percentage >50 and percentage <= 60 you have to
print “Second class” percentage > 35 and percentage <= 50 you have to
print “Pass class” Otherwise print “Fail”*/
import 'dart:io';
void main(){
  int s1,s2,s3,s4,s5;
  print("Enter a Math Marks :");
  s1=int.parse(stdin.readLineSync()!);
  print("Enter a Science Marks :");
  s2=int.parse(stdin.readLineSync()!);
  print("Enter a SS Marks :");
  s3=int.parse(stdin.readLineSync()!);
  print("Enter a English Marks :");
  s4=int.parse(stdin.readLineSync()!);
  print("Enter a Computer Marks :");
  s5=int.parse(stdin.readLineSync()!);
  int total=s1+s2+s3+s4+s5;
  double percentage =(total/500)*100;
  if (percentage>75) {
    print("Distinction");
  }else if(percentage>60 && percentage<=75){
    print("First Class");
  }else if(percentage>50 && percentage<=60){
    print("Secons Class");
  }else if(percentage>35 && percentage<=50){
    print("Pass Class");
  }else{
    print("Fail");
  }
}