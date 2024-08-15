//pattern 1
import 'dart:io';

void main(){
  int n=5;
  for (int i = 1; i <=5; i++) {
    for (int j = 0; j <=i; j++) {
      stdout.write("*");
    }
    print(" ");
  }
}
