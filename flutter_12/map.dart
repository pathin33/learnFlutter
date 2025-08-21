void main() {
  /*
   *  MAP TRONG DART
   *  - Map là tập hợp các cặp key-value (khóa - giá trị).
   *  - Key là duy nhất, value có thể trùng lặp.
   *  - Dùng key để truy cập đến value (giống như dictionary trong Python).
   */

  // ==============================
  // 1. Khởi tạo Map
  // ==============================
  var map1 = {"id": 1, "name": "Hieu"}; // Khởi tạo trực tiếp
  Map<String, String> map2 = {};        // Map rỗng
  var map3 = Map<int, String>();        // Map có kiểu rõ ràng

  print(map1); // {id: 1, name: Hieu}
  print(map2); // {}
  print(map3); // {}

  // ==============================
  // 2. Thêm và cập nhật phần tử
  // ==============================
  map1["age"] = 20;              // Thêm key-value mới
  map1["name"] = "Thiện Bá";     // Cập nhật value của key "name"
  map1.addAll({"gender": "Nam", "city": "HCM"}); // Thêm nhiều phần tử
  print("Sau khi thêm/cập nhật: $map1");

  // ==============================
  // 3. Xóa phần tử
  // ==============================
  map1.remove("city");           // Xóa phần tử theo key
  print("Sau khi remove city: $map1");

  map1.clear();                  // Xóa toàn bộ phần tử
  print("Sau khi clear: $map1"); // {}

  // ==============================
  // 4. Truy cập phần tử
  // ==============================
  var map4 = {"a": 10, "b": 20, "c": 30};
  print(map4["a"]);         // 10 (lấy value theo key)
  print(map4.keys);         // (a, b, c) -> tất cả key
  print(map4.values);       // (10, 20, 30) -> tất cả value
  print(map4.length);       // 3
  print(map4.isEmpty);      // false
  print(map4.isNotEmpty);   // true

  // ==============================
  // 5. Kiểm tra phần tử
  // ==============================
  print(map4.containsKey("a"));     // true
  print(map4.containsValue(100));   // false

  // ==============================
  // 6. Duyệt Map
  // ==============================
  // Cách 1: forEach
  map4.forEach((key, value) {
    print("Key: $key - Value: $value");
  });

  // Cách 2: for-in
  for (var entry in map4.entries) {
    print("Key: ${entry.key}, Value: ${entry.value}");
  }

  // ==============================
  // 7. Biến đổi Map
  // ==============================
  var newMap = map4.map((key, value) => MapEntry(key, value * 2));
  print("Map sau khi nhân đôi value: $newMap"); // {a: 20, b: 40, c: 60}
}
