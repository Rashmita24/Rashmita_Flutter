//12. Write a Program to check the given number is prime or not prime.

import 'dart:io';
void main(){
  int? num,i;
  int? count =0;
  print("Enter a Number");
  num=int.parse(stdin.readLineSync()!);
  for(i=1;i!<=num;i++){
    if(num %i==0){
      count =count!+1;
    }
   } 
   if(count==2){
      print("This number is Prime");
    }else{
      print("This Number is not Prime");
    }
}