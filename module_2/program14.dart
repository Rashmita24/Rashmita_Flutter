/*14. Write a program to find the Max number from the given three
number using Ternary Operator*/



import 'dart:io';
void main(){
int? num1;
int? num2;
int? num3;
int? Maxnum;
  print("Enter a Number 1 :");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter a Number 2 :");
  num2=int.parse(stdin.readLineSync()!);
  print("Enter a Number 3 :");
  num3=int.parse(stdin.readLineSync()!);
  Maxnum = (num1>num2)? ((num1>num3)?num1:num3 ) : ((num2>num3) ? num2:num3);
  print("Max Number is $Maxnum");
 
}



