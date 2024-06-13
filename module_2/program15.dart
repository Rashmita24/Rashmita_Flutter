/*15. Write a program to find the Max number from the given three
number using Nested If*/
import 'dart:io';
void main(){
  int? num1;
  int? num2;
  int? num3;
  print("Enter a Number 1 :");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter a Number 2 :");
  num2=int.parse(stdin.readLineSync()!);
  print("Enter a Number 3 :");
  num3=int.parse(stdin.readLineSync()!);
  if(num1>num2){
    if(num1>num3){
      print("Number 1 is Max");
    }else{
      print("Number 3 is Max");
    }
  }else if (num2>num1){
    if(num2>num3){
      print("Number 2 is Max");
    }else{
      print("number 3 is Max");
    }
  }
}