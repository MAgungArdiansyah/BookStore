import 'package:bookstore/data/model/book_respone_model.dart';
import 'package:bookstore/domain/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  @override
  Future<BookResponeModel> getallNewBook() {
    BookResponeModel bookResponeModel =
        BookResponeModel(books: [], error: "0", total: "20");

    Map<String, dynamic> bookResponseMap = {};
  }
}
