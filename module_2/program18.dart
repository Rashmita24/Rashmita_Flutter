/*18. Write a Program of Addition, Subtraction ,Multiplication and
Division using Switch case.(Must Be Menu Driven)*/
import 'dart:io';
void main(){
  int?  num1;
  int? num2;
  print("Enter a Value 1 :");
  num1 = int.parse(stdin.readLineSync()!);
  print("Enter a Value 2 :");
  num2 = int.parse(stdin.readLineSync()!);
  //print("total : ${num1+num2} && ${num1-num2}, && ${num1*num2}, && ${num1/num2}");
  double? choice;
  print("Press 1 for Addition ");
  print("Press 2 for Subtraction");
  print("Press 3 for Multiplication");
  print("Press 4 for Division");
  //print("Enter 1 for '+' &&  Enter 2 for '-' && Enter 3 for '*' && Enter 4 for '/'");
  choice=double.parse(stdin.readLineSync()!);
  switch(choice){
    case 1 :
    print("Addition of two number = ${num1+num2}");
    break;
    case 2 :
    print("Subtraction of  two number = ${num1-num2}");
    break;
    case 3 :
    print("Multiplication of two number = ${num1*num2}");
    break;
    case 4 :
    print("Division of two Number = ${num1/num2}");
    break;
    default:
    print("Invalid number");
    break;
  }
}
