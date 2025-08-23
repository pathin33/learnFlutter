void main() {
  /*
   *  RUNES TRONG DART
   *  - Runes là cách biểu diễn chuỗi bằng Unicode code points (mã Unicode).
   *  - Mỗi ký tự trong chuỗi đều có một mã số Unicode tương ứng.
   *  - Dùng runes giúp xử lý chính xác các ký tự đặc biệt và emoji (nhiều byte).
   */

  // ==============================
  // 1. Chuỗi bình thường
  // ==============================
  String text = "Hi 👋"; // Chuỗi có cả emoji
  print("Chuỗi gốc: $text");

  // ==============================
  // 2. Lấy runes từ chuỗi
  // ==============================
  Runes runes = text.runes;
  print("Runes: $runes"); // (72, 105, 32, 128075)

  // Duyệt qua từng rune (mã Unicode)
  for (var rune in runes) {
    print("Rune: $rune => ${String.fromCharCode(rune)}");
  }

  // ==============================
  // 3. Unicode trực tiếp
  // ==============================
  // Có thể tạo ký tự bằng mã Unicode với cú pháp \u{xxxx}
  var heart = "\u{2764}";   // ❤
  var smile = "\u{1F600}";  // 😀
  var music = "\u{1F3B5}";  // 🎵

  print("Trái tim: $heart");
  print("Mặt cười: $smile");
  print("Nốt nhạc: $music");

  // ==============================
  // 4. So sánh codeUnits và runes
  // ==============================
  String example = "A 😀";

  // codeUnits: danh sách UTF-16 code units
  print("codeUnits: ${example.codeUnits}");

  // runes: danh sách Unicode code points
  print("runes: ${example.runes.toList()}");

  /*
   * Kết luận:
   * - codeUnits có thể trả về nhiều số cho 1 emoji (do UTF-16 chia nhỏ).
   * - runes luôn trả về 1 mã Unicode duy nhất cho mỗi ký tự.
   */
}
