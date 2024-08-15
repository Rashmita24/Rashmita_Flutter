//19. Write a program of to find out the Area of Triangle, Rectangle and Circle using If Condition.(Must Be Menu Driven
import 'dart:io';

void main(){
  while (true) {
  print("1. Area of Triangle");
  print("2.Area of Renctancgle");
  print("3.Area of Circle");
  print("4.Exit");

  String choice=stdin.readLineSync()!;

  if (choice == 1) {
    print("Enter height of Triangle");
    double h=double.parse(stdin.readLineSync()!);
    print("Enter Base of Triangle");
    double b=double.parse(stdin.readLineSync()!);
    double area=(h*b)/2;
    print("Area of Triangle : $area");
  }else if(choice==2){
    print("Enter Length of Rectangle");
    double l=double.parse(stdin.readLineSync()!);
    print("Enter Width pf Rectangle");
    double w=double.parse(stdin.readLineSync()!);
    double area=l*w;
    print("Area of Rectangle : $area");
  }else if(choice==3){
    print("Enter a Radius of Circle");
    double r=double.parse(stdin.readLineSync()!);
    double pi=3.14;
    double area=pi*r*r;
    print("Area of Circle : $area");
  }else if(choice==4){
    print("Exit");
    break;
  }else{
    print("Invalid Choice");
  }
  }
}
