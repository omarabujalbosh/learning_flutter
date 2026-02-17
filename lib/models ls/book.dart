class Book {
final int id;
  final String title;
  final String author;
  final String description;
  final String imageUrl;
  final double rating;

  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl,
    required this.rating,
  });
  
  factory Book.formjson(Map<String,dynamic> josn){
   return Book(
    id:josn['id']??0,
    title: josn['title']?? 'none',
    author: josn['author']??'none',
    description: josn['desciption']?? 'none',
    imageUrl: josn['imageUrl']?? 'none',
    rating: josn['rating']??'none',
   );
  }
}