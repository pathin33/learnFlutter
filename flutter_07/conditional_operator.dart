/* Toán tử điều kiện
 -expr1 ? expr2 : expr3;
 Nếu expr đúng => trả về expr2 
 Nếu expr sai => trả về expr3

 -expr1 ?? expr2
 Nếu expr1 ko null trả về giá trị của nó
 Nếu expr1 null trả về giá trị của expr2
*/
void main(){
  int a = 10;
  int b = 10;
  //expr1 ? expr2 : expr3;
  String result = (a==b) ?"a bang b " : "a ko bang b";
  print(result);

  //expr1 ?? expr2
  var x = 100;
  var y = x ?? 50;
  print(y);//100

  int? z;
  y = z ?? 30;
  print(y);//30

}