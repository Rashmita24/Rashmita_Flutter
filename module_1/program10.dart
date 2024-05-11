import 'dart:io';

void main(){
  int? num;

  
    print("enter a number");
    num = int.parse(stdin.readLineSync()!);

    if(num>0){
      print("positive");
    }else{
      print("negative");
    }
  }
