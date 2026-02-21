/*
import 'admin.dart';
import 'book.dart';
import 'categories.dart';
import 'user.dart';
class Library {
Set<Book> books={};
Set<User> users={};
Set<Admin> admins={};
Map<Category,Set<Book>> caregoryIndex={};
void addBook(Book b){
  books.add(b);
}
void removeBook(Book b){
  books.remove(b);
}
Set<Book> junction(Set<Book> A, Set<Book> B) {
  Set<Book> result = {};

  // دايمًا لف على الأصغر
  Set<Book> smaller = A.length < B.length ? A : B;
  Set<Book> larger  = A.length < B.length ? B : A;

  for (Book b in smaller) {
    if (larger.contains(b)) {
      result.add(b);
    }
  }

  return result;
}
void filterbooks(List<Category> requestedCategories ){
  Set<Book>result=Set.from([requestedCategories[0]]??{});
for(int i=1;i<requestedCategories.length;i++){
  Set<Book> nextSet=caregoryIndex[requestedCategories[i]]??{} ;
  result=junction(result,nextSet);
}
for(Book b in result){
  b.printBookInfo();
}
}

}
*/