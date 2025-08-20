void main(){
  /*
  - List la tap hop cac phan tu co thu tu va co the trung lap
  - Cac phan tu duoc truy cap bang chi so index tu 0
  - kich thuoc co the thay doi duoc
  */
    
  List<String> list1 = ["mot","hai","ba"];//truc tiep

  var list2 = [1,2,3];//su dung var
  List<String> list3 = [];//list rong
  var list4 = List<int>.filled(3,0);//list co kich thuoc co dinh voi 3 phan tu 0
  print(list4);//[0,0,0]

  // 1.Them phan tu
  list1.add('D');//them 1 phan tu
  list1.addAll(['A','B']);//them nhieu phan tu co the trung lap
  print(list1);
  list1.insert(0, 'J');//chen vao 1 phan tu vi tri 0 phan tu 'J'
  list1.insertAll(2, ['K','H']);//chen vao nhieu phan tu

  // 2.Xoa phan tu
  list1.remove('hai');//xoa phan tu co gia tri 'hai'
  list1.removeAt(2);//Xoa phan tu tai vi tri 0
  list1.removeLast;//Xoa phan tu tai vi tri cuoi
  list1.removeWhere((e)=>e=='B');//Xoa theo dieu kien
  list1.clear();
  print(list1);

  //3.Truy cap phan tu:
  print(list2[0]);
  print(list2.first);//lay tu dau tien
  print(list2.last);//lay ra phan tu cuoi cung
  print(list2.length);//lay ra do dai list

  //4.Kiem tra
  print(list2.isEmpty);//check xem list co bi rong k true = 'rong'
  print("List 3 : ${list3.isNotEmpty?'Khong rong':'rong'}");//true = 'khong rong'
  print(list4.contains(1));//check xem chuoi co chua gia tri do k
  print(list4.indexOf(0));//vi tri dau tien xuat hien cua so 0
  print(list4.lastIndexOf(0));//vi tri cuoi cung xuat hien cua so 0

  //5.Bien doi
  list4 = [2,4,3,5,1,8];
  list4.sort();//sap xep tang dan
  print(list4);
  list4.sort((a,b)=>b.compareTo(a));//sap xep giam dan
  print(list4);

  //6.Cat va noi
  var subList = list4.sublist(1,3);//ta lay tu index 1 den nho hon index 3 kieu nhu la 1 den < 3
  print(subList);
  //var str_joined = list4.join('-');
  //print(str_joined);//8-5-4-3-2-1;

  //7.Duyet phan tu ben trong list
  
  list4.forEach((item){
    print(item);//in ra tung phan tu
  });
}