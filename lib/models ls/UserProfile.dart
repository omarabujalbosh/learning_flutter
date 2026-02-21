import 'book.dart';
class UserProfile{
  String fullName;
  String bio;
  String imageUrl;//رابط صورة البرفايل 
  List<Book>myWorks;//الكتب الخاصة بل مؤلف 
  List<Book>myBooks;//الكتب التي يقرأها الالمستخدم

 UserProfile({
  required this.fullName,
  required this.bio,
  required this.imageUrl,
  required this.myWorks,
  required this.myBooks,
 });

 factory UserProfile.formjson(Map <String,dynamic>josn){
  return UserProfile(
  fullName: josn['fullName']??"",
  bio:josn['bio']??"",
  imageUrl: josn['imageUrl']??"",
  //تحويل القائمة القادمة من السيرفر الى list من الكتب
  myWorks:(josn['myWorks'] as List?)
  ?.map((item) => Book.formjson(item))
  .toList()??[],
   //تحويل القائمة القادمة من السيرفر الى list من الكتب
  myBooks: (josn['myBooks'] as List?)
  ?.map((item)=>Book.formjson(item))
  .toList()??[],

 );
 }
}