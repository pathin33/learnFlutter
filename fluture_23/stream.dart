import 'dart:async';

/// =======================
/// 1. Stream cơ bản
/// =======================
void streamCoBan() {
  // Tạo ra một stream phát ra số đếm sau mỗi 1 giây
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count);

  stream.listen((value) {
    print("Stream cơ bản nhận được: $value");
  });
}

/*
Giải thích:
- Stream.periodic: cứ mỗi 1 giây phát ra một số.
- listen: đăng ký lắng nghe dữ liệu.
*/


/// =======================
/// 2. Stream với async* và yield
/// =======================
Stream<int> soTu1Den3() async* {
  for (int i = 1; i <= 3; i++) {
    await Future.delayed(Duration(seconds: 1)); // giả lập chờ dữ liệu
    yield i; // phát giá trị
  }
}

void streamAsyncYield() {
  soTu1Den3().listen((value) {
    print("Stream async* yield nhận: $value");
  });
}

/*
Giải thích:
- async* : tạo stream thay vì Future.
- yield : phát ra từng giá trị.
*/


/// =======================
/// 3. StreamController
/// =======================
void streamControllerDemo() {
  final controller = StreamController<String>();

  controller.stream.listen((data) {
    print("StreamController nhận: $data");
  });

  controller.add("Xin chào");
  controller.add("Dart Stream");
  controller.add("Kết thúc");

  controller.close();
}

/*
Giải thích:
- StreamController: tạo stream thủ công.
- add(): phát giá trị.
- close(): kết thúc stream.
*/


/// =======================
/// 4. Xử lý dữ liệu Stream (map, where,...)
/// =======================
void streamXuLy() {
  Stream<int> numbers = Stream.fromIterable([1, 2, 3, 4, 5]);

  numbers
      .where((n) => n.isEven) // lọc số chẵn
      .map((n) => n * 10)     // nhân 10
      .listen((val) => print("Stream xử lý kết quả: $val"));
}

/*
Giải thích:
- fromIterable: tạo stream từ list.
- where: lọc điều kiện.
- map: biến đổi dữ liệu.
*/


/// =======================
/// 5. Broadcast Stream (nhiều listener)
/// =======================
void streamBroadcast() {
  Stream<int> stream = Stream.periodic(Duration(seconds: 1), (count) => count).asBroadcastStream();

  stream.listen((value) {
    print("Listener 1: $value");
  });

  stream.listen((value) {
    print("Listener 2: $value");
  });
}

/*
Giải thích:
- asBroadcastStream(): cho phép nhiều listener cùng nghe.
*/


/// =======================
/// CHỌN MAIN ĐỂ CHẠY
/// =======================
void main() {
  // Chỉ bật 1 trong các hàm dưới để chạy thử

  // streamCoBan();
  // streamAsyncYield();
  // streamControllerDemo();
  // streamXuLy();
  // streamBroadcast();
}
