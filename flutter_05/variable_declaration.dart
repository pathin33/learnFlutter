/* Cách khai báo biến:
-Sử dụng "var" để dart tự suy luận kiểu
-Khai báo với kiểu cụ thể
-khai báo bằng Object
*/


late String doiCho ;
// Late "trì hoãn" việc gán giá trị 
/*
-Với late có thể gán nhiều lần
  doiCho = "Mot";
  print(doiCho);
  doiCho = "Hai";
  print(doiCho)
-Với late final chỉ có thể gán 1 lần duy nhất

*/
void main(){
  //Tu suy luan kieu
  var ten = 'Thien';//String
  var tuoi = 18;//int

  //Khai bao voi kieu du lieu cu the
  String name = 'Thien';
  int age = 18;

  //Khai bao voi Object 
  Object tenNguoiDung = 'Thien';
  
  //De nhan duoc gia tri null
  String? canNang;
  canNang = null;
  //khi code nhu nay thi ms co the co bien null 
  
  //Biến final 
  //Chỉ có thể gán giá trị 1 lần duy nhất
  //Có thể khởi tạo sau khi khai báo
  late final int  val;
  val = 36;

  //Biến const 
  //Chỉ có thể gán giá trị 1 lần duy nhất
  //Phải khởi tạo ngay khi khai báo
  const String appName ="Snake game";
  
  //so với final có thể gán giá trị sau khi khai báo còn const thì ko như v
  //phải gán giá trị ngay
}