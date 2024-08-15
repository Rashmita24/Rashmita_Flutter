//Write a program you have to print the Fibonacci series up to user given number
import 'dart:io';
void main(){
  int n1=0;
  int n2=1;
  int num,fib;
  print("Enter a Numeber");
  num=int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= num; i++) {
    print(n1);
    fib=n1+n2;
    n1=n2;
    n2=fib;
  }
}