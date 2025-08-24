import 'dart:io';

class person {
  String hoTen;
  String ngaySinh;
  String gioiTinh;
  String queQuan;
  person(this.hoTen, this.ngaySinh, this.gioiTinh, this.queQuan);
}

class sv extends person {
  int maSv;
  double cc;
  double kt;
  double diemThi;

  sv(
    this.maSv,
    this.cc,
    this.kt,
    this.diemThi,
    String hoTen,
    String ngaySinh,
    String gioiTinh,
    String queQuan,
  ) : super(hoTen, ngaySinh, gioiTinh, queQuan);
  double diemTongKet() {
    return (this.cc * 0.1) + (this.kt * 0.3) + (this.diemThi * 0.6);
  }

  String xepLoai() {
    if (diemTongKet() >= 9 && diemTongKet() <= 10) {
      return "xuất sắc";
    } else if (diemTongKet() >= 8 && diemTongKet() < 9) {
      return "giỏi";
    } else if (diemTongKet() >= 7 && diemTongKet() < 8) {
      return "khá";
    } else if (diemTongKet() >= 3.5 && diemTongKet() < 5) {
      return "yếu";
    } else {
      return "kém";
    }
  }

  @override
  String toString() {
    return """
========== Thông tin sinh viên ==========
Họ tên        : $hoTen
Ngày sinh     : $ngaySinh
Giới tính     : $gioiTinh
Quê quán      : $queQuan
Mã SV         : $maSv
Chuyên cần    : $cc
Kiểm tra      : $kt
Điểm thi      : $diemThi
----------------------------------------
Điểm tổng kết : ${diemTongKet().toStringAsFixed(2)}
Xếp loại      : ${xepLoai()}
========================================
""";
  }
}

void main() {
  stdout.write("Số lượng sinh viên bạn muốn nhập: ");
  int n = int.parse(stdin.readLineSync()!);
  List<sv> listSv = [];
  for (int i = 0; i < n; i++) {
    stdout.write("Họ và tên: ");
    String hoTen = stdin.readLineSync()!;
    stdout.write("Ngày sinh: ");
    String ngaySinh = stdin.readLineSync()!;
    stdout.write("Giới tính: ");
    String gioiTinh = stdin.readLineSync()!;
    stdout.write("Quê quán: ");
    String queQuan = stdin.readLineSync()!;
    stdout.write("Mã sinh viên: ");
    int maSv = int.parse(stdin.readLineSync()!);
    stdout.write("Điểm chuyên cần: ");
    double cc = double.parse(stdin.readLineSync()!);
    stdout.write("Điểm kiểm tra: ");
    double kt = double.parse(stdin.readLineSync()!);
    stdout.write("Điểm thi: ");
    double diemThi = double.parse(stdin.readLineSync()!);
    sv sinhVien = new sv(
      maSv,
      cc,
      kt,
      diemThi,
      hoTen,
      ngaySinh,
      gioiTinh,
      queQuan,
    );
    listSv.add(sinhVien);
  }
  stdout.write("Danh sách sinh viên: \n");
  listSv.forEach((item) {
    print(item.toString());
  });  
  stdout.write("Danh sách sinh viên có điểm tổng kết > 5: \n");
  listSv.forEach((item) {
    if(item.diemTongKet()>5){
      print(item.toString());
    }
    else{
      stdout.write("Không có sinh viên nào có điểm > 5! \n");
    }
  });
  stdout.write("Danh sách sinh viên có điểm tổng kết < 5: \n");
  listSv.forEach((item) {
    if(item.diemTongKet()<5){
      print(item.toString());
    }
    else{
      stdout.write("Không có sinh viên nào có điểm < 5! \n");
    }
  });
  stdout.write("Danh sách xếp loại sinh viên: \n");
  listSv.forEach((item) {
    print("Tên: ${item.hoTen}     Xếp loại: ${item.xepLoai()}");
  });
}
