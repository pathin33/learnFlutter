/*
-as:ép kiểu
-is:kiểm tra kiểu
-is!:kiểm tra không phải kiểu
*/
void main(){
  Object obj = 'Hello';
  if(obj is String){
    print("obj la mot String");
  }
  
  //Kiem tra khong phai kieu int
  if(obj is! int){
    print("obj khong phai la 1 int");
  }

  //Ép kiểu
  String str = obj as String;
  print(str);
}