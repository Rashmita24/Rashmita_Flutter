// //47.Create a program using Set
// void main(){
//   Set setname={"Vishnu","Krishna","Mahadev"};
//   print(setname);
// }
//47.Create a program using Set
void main(){
  Set setname= new Set();
  setname.add("C Language");
  setname.add("Java");
  setname.add("Flutter");
  for (String i in setname) {
    print(i);
  }
}