/*
Record là 1 kiểu dữ liệu tổng hợp được giới thiệu trong Dart 3.0
cho phép nhóm nhiều giá trị có kiểu khác nhau thành 1 đơn vị duy nhất
Records là 1 immutable - nghĩa là không thể thay đổi sau khi được tạo
*/
void main(){
  //khởi tạo
  var r = ('first',a:2,5,10.6);//record
  //khởi tạo record 2 giá trị
  var points = (122,113);
  //định nghĩa person
  var person = (name:'Alice',age:25,36);

  //truy cập giá trị
  print(r.$1);//'first'
  print(points.$2);//113

  //dùng tên để truy cập
  print(person.name);//Alice
  print(person.age);//25
  //nếu trong record ko khai báo cặp key và value thì khi muốn truy cập t sẽ 
  print(person.$1);
  //tại sao là $1 tại vì trước đó các giá trị được khai báo bằng cặp key-value
}