void main() {
  // ==============================
  // 1. Khởi tạo Set
  // ==============================
  var set1 = {1, 2, 3, 3};          // tự động loại bỏ trùng
  var set2 = Set<int>();            // tạo set rỗng kiểu int
  var set3 = Set.from([4, 5, 5, 6]); // tạo set từ List, bỏ trùng
  
  print("set1: $set1"); // {1, 2, 3}
  print("set2: $set2"); // {}
  print("set3: $set3"); // {4, 5, 6}

  // ==============================
  // 2. Thông tin cơ bản
  // ==============================
  print("Số phần tử trong set1: ${set1.length}");
  print("set1 có rỗng không? ${set1.isEmpty}");
  print("set1 có chứa số 2 không? ${set1.contains(2)}");

  // ==============================
  // 3. Thêm & xóa phần tử
  // ==============================
  set1.add(10);                   // thêm phần tử
  set1.addAll([20, 30, 10]);      // thêm nhiều phần tử (10 sẽ bị bỏ qua vì trùng)
  print("Sau khi thêm: $set1");   // {1, 2, 3, 10, 20, 30}

  set1.remove(2);                 // xóa phần tử 2
  print("Sau khi xóa 2: $set1");  // {1, 3, 10, 20, 30}

  set1.clear();                   // xóa hết
  print("Sau khi clear: $set1");  // {}

  // ==============================
  // 4. Các phép toán tập hợp
  // ==============================
  var a = {1, 2, 3};
  var b = {3, 4, 5};

  print("Union (hợp): ${a.union(b)}");           // {1, 2, 3, 4, 5}
  print("Intersection (giao): ${a.intersection(b)}"); // {3}
  print("Difference (hiệu): ${a.difference(b)}");     // {1, 2}

  // ==============================
  // 5. Duyệt phần tử trong Set
  // ==============================
  var numbers = {10, 20, 30};

  // Cách 1: forEach
  numbers.forEach((value) {
    print("forEach -> $value");
  });

  // Cách 2: for-in
  for (var value in numbers) {
    print("for-in -> $value");
  }
}
