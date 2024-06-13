//Write a program you have to find the factorial of given number.
import 'dart:io';
void main(){
  int? num;
  print("Enter a number:");
  num=int.parse(stdin.readLineSync()!);
  int f=1;
  for (var i = 1; i <=num; i++) {
    f=f*i;
  }
  print("Factorial :$f");
}