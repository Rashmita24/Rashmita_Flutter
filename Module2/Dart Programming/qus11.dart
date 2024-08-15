//11. Write a Program to check the given year is leap year or not.
import 'dart:io';

void main(){
  int year;
  print("Enter a Year");
  year =int.parse(stdin.readLineSync()!);
  if(year % 4 ==0 && year % 400 != 0 && year % 100 != 0){
    print("This year is Leap Year");
  }else{
    print("This year is not a Leap Year");
  }
}