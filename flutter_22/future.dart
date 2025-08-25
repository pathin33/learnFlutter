// Future trong Dart đại diện cho một giá trị sẽ có trong tương lai
// Nó thường dùng khi làm việc bất đồng bộ (asynchronous), ví dụ gọi API, đọc file, chờ đợi...
// Hàm này giả lập việc tải dữ liệu từ server
Future<String> fetchData() async {
  // Future.delayed giúp trì hoãn 2 giây, giống như đang chờ server trả dữ liệu
  await Future.delayed(Duration(seconds: 2));
  return "Dữ liệu đã tải xong!";
}

void main() async {
  print("Chương trình bắt đầu");

  // ========================
  // Cách 1: dùng async/await
  // ========================
  try {
    // Chờ kết quả từ fetchData
    String result = await fetchData();
    print("Kết quả (async/await): $result");
  } catch (e) {
    print("Có lỗi xảy ra: $e");
  }
  // ========================
  // Cách 2: dùng .then() và .catchError()
  // ========================
  fetchData().then((value) {
    print("Kết quả (then): $value");
  }).catchError((error) {
    print("Có lỗi (then): $error");
  });

  print("Chương trình kết thúc");
}
