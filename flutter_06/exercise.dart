void main() {
  int diemToan = 8;
  int diemVan  = 7;
  int tongDiem = 0;

  // Cộng điểm từng môn
  tongDiem += diemToan;//td = 0 + 8 = 8
  tongDiem += diemVan;//td = 8 + 7 = 15

  // Tính điểm trung bình
  double diemTB = tongDiem / 2;
  //diemTB = 7.5

  // Gán điểm đạt / không đạt
  String? ketQua;
  ketQua ??= 'Chưa xét';
  //ketQua = 'Chưa xét'
  if (diemTB >= 5) {
    ketQua = 'Đạt';
  }

  print('Điểm TB : $diemTB');//7.5
  print('Kết quả : $ketQua');//Đạt
}
