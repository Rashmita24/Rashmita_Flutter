//18. Write a Program of Addition, Subtraction ,Multiplication and Division using Switch case.(Must Be Menu Driven)
import 'dart:io';
void main(){
  int num1,num2;
  int? choice;
  print("Enter a Number 1 :");
  num1=int.parse(stdin.readLineSync()!);
  print("Enter a Number 2 :");
  num2=int.parse(stdin.readLineSync()!);
  print("Enter a choice your choice from(1-4)");
  choice=int.parse(stdin.readLineSync()!);
  switch(choice){
    case 1:
    print("Addition of $num1 and $num2 :${num1+num2}");
    break;
    case 2:
    print("Subtraction of $num1 and $num2 :${num1-num2}");
    break;
    case 3:
    print("Multiplication of $num1 and $num2 :${num1*num2}");
    break;
    case 4:
    print("Division of $num1 and $num2 :${num1/num2}");
    break;
    default:
    print("Invalid choice");
  }
}
