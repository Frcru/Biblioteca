class Libro {
  String _title = '', _author = '', _image = '', _categoria = '', _isbn = '';
  int _stock = 1;
  Libro(String title, String author, String image, String categoria,
      String isbn, int stock) {
    _title = title;
    _author = author;
    _image = image;
    _categoria = categoria;
    _isbn = isbn;
    _stock = stock;
  }

  String get title => _title;

  set title(String str) {
    _title = str;
  }

  String get author => _author;

  set author(String str) {
    _author = str;
  }

  String get image => _image;

  set image(String str) {
    _image = str;
  }

  String get categoria => _categoria;

  set categoria(String str) {
    _categoria = str;
  }

  String get isbn => _isbn;

  set isbn(String str) {
    _isbn = str;
  }

  int get stock => _stock;

  set stock(int num) {
    _stock = num;
  }
}
