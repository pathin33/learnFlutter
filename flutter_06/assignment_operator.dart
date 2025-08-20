/* Toán tử gán 
- '=' gán đơn
- '+=' cộng rồi gán
.....
- '??=' sẽ gán nếu biến đang null

*/
void main(){
  //Thí dụ về '??='
  int? num;
  
  num ??= 36;
  print(num);//num=36

  // num ??=12;
  // print(num);//num=36 vì num = null lên đã gán trước đó r
}