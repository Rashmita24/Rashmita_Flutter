//14. Write a program to find the Max number from the given three number using Ternary Operator
import 'dart:io';
void main(){
  int? num1,num2,num3;
  print("Enter a First Number :");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter a Second Number :");
  num2 = int.parse(stdin.readLineSync()!);
  print("Enter a Third Number :");
  num3 = int.parse(stdin.readLineSync()!);
  (num1>num2) ? ((num1>num3) ? print("$num1 is Max") : print("$num3 is Max")) :((num2>num3) ? print("$num2 is Max") : print("$num3 is Max"));
}