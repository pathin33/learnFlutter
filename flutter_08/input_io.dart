import 'dart:io';
//Nhập dữ liệu từ bàn phím
void main(){
  //Nhập tên user
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  //Nhập age 
  stdout.write("Enter your age: ");
  int age = int.parse(stdin.readLineSync()!);

  print("Name: $name, Age: $age");
}