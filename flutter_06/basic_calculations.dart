void main(){
  //Các phép tính cơ bản
  int a = 5+3;
  int b = 5-3;
  int c = 5*3;
  double d = 5/3;

  //Phép chia lấy phần nguyên
  int f = 7~/2;//3

  //Phép gán và tính toán kết hợp
  int x = 10;
  x+=5; //x=x+5
  x-=2; //x=x-2
  x~/=3; //x= x~/3

  //Tang/giam
  //++/--
  int y = 100;
  y++;//y = y+1
  y--;//y = y-1
  //Đối với hậu tố và tiến tố của ++/--
  int g = 5;
  print(g++);//in ra 5 và g = 6
  print(++g);//in ra 7 và g = 7
  print(g--);//in ra 7 và g = 6
  print(--g);//in ra 5 và q = 5
  print(g);//in ra 5
}