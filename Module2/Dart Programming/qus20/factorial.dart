//Write a program you have to find the factorial of given number.
import 'dart:io';

void main(){
  int num;
  int fac=1;
  print("Enter a Number");
  num=int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    fac=fac*i;
  }
  print("Factorial of $num = $fac");
}