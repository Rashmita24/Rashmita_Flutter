/*8. Write a program to calculate sum of 5 subjects & find the
percentage. Subject marks entered byuser. */
import 'dart:io';


void main(){
  int s1;
  int s2;
  int s3;
  int s4;
  int s5;

   print('Enter marks for sub 1 :');
   s1 = int.parse(stdin.readLineSync()!);
   print('Enter marks for sub 2 :');
   s2 = int.parse(stdin.readLineSync()!);
   print('Enter marks for sub 3 :');
   s3 = int.parse(stdin.readLineSync()!);
   print('Enter marks for sub 4 :');
   s4 = int.parse(stdin.readLineSync()!);
   print('Enter marks for sub 5 :');
   s5 = int.parse(stdin.readLineSync()!);

   var total = s1+s2+s3+s4+s5;

   var percentage = (total/500)*100;
   print("percentage:$percentage");

   }