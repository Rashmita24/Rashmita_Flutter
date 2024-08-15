//13. Write a program to find the Max number from the given three number using Nested If
import 'dart:io';
void main(){
  int? num1,num2,num3;
  print("Enter a number 1 :");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter a number 2 :");
  num2 = int.parse(stdin.readLineSync()!);
  print("Enter a number 3 :");
  num3 = int.parse(stdin.readLineSync()!);
  if (num1 > num2 && num1 > num3) {
    print("Num1 is Greater ");
  }else if(num2>num1 && num2> num3){
    print("Num2 is Greater");
  }else{
    print("Num3 is Greater");
  }
}
