import 'dart:io';
import 'dart:math';

void main() {
  stdout.write("Giai phuong trinh bac 2 ax^2 + bx + c: \n");
  stdout.write("Nhap so a: ");
  var a = double.parse(stdin.readLineSync()!);
  while(a==0){
    stdout.write("Loi!\n");
    stdout.write("Nhap so a: ");
    a = double.parse(stdin.readLineSync()!);
  }
  stdout.write("Nhap so b: ");
  var b = double.parse(stdin.readLineSync()!);
  stdout.write("Nhap so c: ");
  var c = double.parse(stdin.readLineSync()!);
  var delta = b*b - 4*a*c;
  if(delta<0){
    stdout.write("Phuong trinh vo nghiem");
  }
  else if(delta==0){
    var x = -(b/2*a);
    stdout.write("Phuong trinh co nghiem kep ${x.toStringAsFixed(2)}");
  }
  else{
    var x1 = (-b+sqrt(delta))/(2*a);
    var x2 = (-b-sqrt(delta))/(2*a);
    stdout.write("Phuong trinh co hai nghiem pham biet ${x1.toStringAsFixed(2)} va ${x2.toStringAsFixed(2)}");
  }
}
