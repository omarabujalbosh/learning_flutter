import 'parson.dart';
import 'book.dart';
class User extends Person{
  Set<Book>? _books;
 User(super.name,super.id,super.day,super.month,super.year):_books={};
void addBook(Book b){
 _books?.add(b);
}
void deletebook(Book b){
_books?.remove(b);
}
void viewMyBookList() {
  for (Book b in _books!) {
    b.printBookInfo();
  }
}

 
}


