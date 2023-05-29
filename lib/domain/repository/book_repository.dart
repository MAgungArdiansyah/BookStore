import 'package:bookstore/data/model/book_respone_model.dart';

abstract class BookRepository {
  Future<BookResponeModel> getallNewBook(
    String query
  );
}
