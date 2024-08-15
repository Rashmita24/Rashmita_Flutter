//12. Write a Program to check the given number is prime or not prime.
import 'dart:io';
void main(){
  int num;
  int prime = 0;
  stdout.write("Enter a Number : ");
  num= int.parse(stdin.readLineSync()!);
  int i =2;
  while (i <  num) {
    if (num % i ==0) {
      prime++;
    }
    i++;
  }
  if (prime == 0) {
    print("Number is Prime");
  }else{
    print("Number is Not Prime");
  }
}