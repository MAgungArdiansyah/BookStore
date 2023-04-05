import 'package:bookstore/data/datasource/book_datasource_dio.dart';
import 'package:bookstore/data/model/book_respone_model.dart';
import 'package:bookstore/domain/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookDatasourceDio _datasourceDio = BookDatasourceDio();

  @override
  Future<BookResponeModel> getallNewBook() async => await _datasourceDio.getBooks();
}
