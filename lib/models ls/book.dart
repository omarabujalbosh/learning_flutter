class Book {
final String id;
  String title;
  final String authorId;
  String description;
  String imageUrl;
  double rating;

  Book({
    required this.id,
    required this.title,
    required this.authorId,
    required this.description,
    required this.imageUrl,
    required this.rating,
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
   );
  }
}