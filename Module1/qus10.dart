//10. Write a Program to check the given number is Positive, Negative.
import 'dart:io';

void main(){
  int num;
  print("Enter a number:");
  num= int.parse(stdin.readLineSync()!);
  if(num>0){
    print("Number is Positive");
  }else{
    print("Number is Negative");
  }
}