//8. Write a program to calculate sum of 5 subjects & find the percentage. Subject marks entered byuser.
void main(){
  int sub1 = 98;
  int sub2 = 97;
  int sub3=98;
  int sub4=87;
  int sub5=89;
  int sum= sub1+sub2+sub3+sub4+sub5;
  print("Addition of Subjects : $sum");
  double percentage = (sum/500)*100;
  print("Percentage : $percentage");
}