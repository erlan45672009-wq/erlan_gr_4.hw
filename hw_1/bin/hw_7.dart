class Book {
  String _title;
  String _author;
  double _rating;

  Book(this._title, this._author) : _rating = 0;
  Book.withRating(this._title, this._author, this._rating);

  String get title => _title;
  String get author => _author;
  double get rating => _rating;

  set rating(double value) {
    if (value >= 0 && value <= 10) {
      _rating = value;
    }
  }

  void displayInfo() {
    print('Title: $_title');
    print('Author: $_author');
    print('Rating: $_rating');
  }
}

class Library {
  String name;
  List<Book> _books = [];

  Library(this.name);

  void addBook(Book b) => _books.add(b);

  void showBooks() {
    print('Library: $name');
    for (int i = 0; i < _books.length; i++) {
      print('${i + 1}. ${_books[i].title}');
    }
  }

  int get count => _books.length;
}

void main() {
  Book b1 = Book('Harry Potter', 'J.K. Rowling');
  Book b2 = Book.withRating('Sherlock Holmes', 'A. Conan Doyle', 9.5);
  Book b3 = Book('The Hobbit', 'J.R.R. Tolkien');
  b3.rating = 8.8;

  Library cityLib = Library('City Library');
  cityLib.addBook(b1);
  cityLib.addBook(b2);
  cityLib.addBook(b3);

  cityLib.showBooks();
  print('Total books: ${cityLib.count}');
}