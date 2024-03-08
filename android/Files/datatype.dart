import 'dart:io';
void main(){
  int j=53;
  print(j);
  var name = stdin.readLineSync();
  stdout.write("Enter Your Name ,$name");
  // var raman=new Human();creating a object;

  var ritik=Human();  //creating a object 
  print(ritik.x);

  // declaration of variable
  // int? a; ? for a can be nullable

  // print(a);
  // string s;

// for storing more bigger val than int

  // BigInt longval;
  // longval=BigInt.parse("233333333333333333");

// num datatype can store both int and double;

// print('Welcome to dart');
}

class Human{
      
      
      int x=int.parse(stdin.readLineSync()!);

}
// void main(){
//   // var first intialized with value will only contain first assign data type values
//   // but if you dont assign any value at time of declaration than you can assign multiple type data in var variable that is dynamic declaration
  
//   // same
//   //  var name;

//   // dynamic name;
  
//   // name=1;
//   // name= "ram";
//   // print(name);
// }
