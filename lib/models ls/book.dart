import 'categories.dart';
class Book {
final String id;
  String title;
  final String authorId;
  String description;
  String imageUrl;
  double rating;
  Set<Category> categories;

  Book({
    required this.id,
    required this.title,
    required this.authorId,
    required this.description,
    required this.imageUrl,
    required this.rating,
    required this.categories,
  }); 
  
  factory Book.formjson(Map<String,dynamic> josn){
   return Book(
    id:josn['id']??'',
    title: josn['title']?? '',
    authorId: josn['authorId']??'',
    description: josn['description']?? '',
    imageUrl: josn['imageUrl']?? '',
    //التقيم ممكن يكون فيه اعشار 
    rating: (josn['rating']??0.0).toDouble(),
    categories: (josn['categories']as List?)
    ?.map((item) => Category.formjson(item))
    .toSet()??{},
   );
  }
}