/*
typedef là 1 cách viết ngắn gọn để tạo các alias(bí danh) cho các loại dữ liệu
Điều này giúp mã nguồn trở lên rõ ràng và dễ đọc hơn đặc biệt khi làm việc với các kiểu dữ liệu phức tạp
*/
typedef map = Map<String,dynamic>;
void main(){
    map info = {
        "fullName":"Nguyen Ba Thien" 
    };
    print(info['fullName']);
}