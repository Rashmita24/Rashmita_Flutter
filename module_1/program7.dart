/*7. Write a program to convert temperature from degree centigrade to
Fahrenheit.*/
import 'dart:io';
void main(){
  int cel;
  print("Enter temperature:");
  cel = int.parse(stdin.readLineSync()!);
  var t = (cel*9/5)+ 32;
  print("Degree cel to fahrenheit: $t");
}