import 'UserProfile.dart';
//تعريف class AppUser 
class AppUser{
  final String id;//رقم مميز خاص لكل مستخدم مكون من 36 خانة بأستخدام ال uuid
  String username;//اسم خاص لكل مستخدم 
  final String email;
  String password;
  bool enabled;//هذا من اهم المتغيرات عنا و وضاءفو متعددة ولاكن بلمختصر هو الي بحدد هل هذا المستخدم مسموح الو يتفاعل ولا لا 
  final DateTime createdAt;
  UserProfile userProfile;//الكلاس الي فيه البيانات المسموح للمستخدم التعامل معها و هو الي بمثل هذا المستخدم داخل البرنامج 

  AppUser({
    required this.id,
    required this.email,
    required this.createdAt,
    required this.userProfile,
    required this.enabled,
    required this.password,
    required this.username});
    //ال factory هو الفنقشن المسؤول عن تحويل و ترجمة البيانات الخام الجاي من السيرفر عن طريق لغة josn الى كائن 
    factory AppUser.formjson(Map<String,dynamic> josn){
     return AppUser(
      id: josn['id']??0,
      email: josn['emil']??"",
    
      createdAt: josn['createdAt']!= null 
      ?DateTime.parse(josn['createdAt'])
      :DateTime.now(),
// لازم ارجعلو بعد ما اخلص كلاس ال userprofile
      userProfile: UserProfile.formjson(josn['userProfile']??{}),

      enabled: josn['enabled']??false,
      password: josn['password']??"",
      username: josn['username']??"",
      ); 
    }

}