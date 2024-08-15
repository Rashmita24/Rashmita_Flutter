//Write a program to print the number in reverse order.
void main(){
  List num=[1,2,3,4,5];
  for (int i = 0; i <num.length; i++) {
    print(num[num.length-1-i]);
  }
}