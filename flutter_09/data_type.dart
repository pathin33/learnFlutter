void main(){
  //int kieu so nguyen
  int x = 1;
  
  //double kieu so thuc
  double y = 100.5;

  //num: co the chu ca so nguyen hoac chu ca so thuc
  num z = 2;
  num d = 2.4;
  
  //chuyen chuoi sang so nguyen
  var one = int.parse("3");

  if(one == 3) print("TRUE");
  else{
    print("FALSE");
  }

  //chuyen chuoi sang so thuc
  var numDouble = double.parse("3.6");
  print(numDouble==3.6);

  //chuyen so nguyen sang chuoi 
  String oneString = 1.toString();
  print(oneString);

  //chuyen so thuc sang chuoi
  String piString = 3.14159.toStringAsFixed(2);
  print(piString);
  //toStringAsFixed(2) se chuyen so thuc sang chuoi lay 
  //2 so sau dau phay

  //Tao ra chuoi nam o nhieu dong
  var s3 = '''
      Dong 1
      Dong 2
      Dong 3
  ''';

  var s4 ="""
      Dong 1 
      Dong 2
      Dong 3
  """;

  var s6 = "Day la mot doan van ban: \n Van Ban";
  print(s6);
  //khi dung r thi no bien thanh 1 chuoi ki tu thuan tuy
  var s7 = r"Day la mot doan van ban: \n Van Ban";
  print(s7);
  //cong chuoi
  var s8 ="chuoi 1 " + "Chuoi 2";
  print(s8);

  var s9 = "chuoi1"
           "Chuoi2"
           "Chuoi3";
  print(s9);//Chuoi1Chuoi2Chuoi3

}