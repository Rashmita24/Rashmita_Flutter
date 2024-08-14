//Write a program to swap two numbers without using third variable.
import 'dart:async';

void main(){
int a=5;
int b=10;
print("Value of a:$a");
print("Value of b:$b\n");
a=a+b;
b=a-b;
a=a-b;
print("Value of a:$a");
print("Value of b:$b");
}