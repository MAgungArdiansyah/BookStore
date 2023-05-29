import 'package:bookstore/data/datasource/book_datasource_dio.dart';
import 'package:bookstore/data/datasource/book_datasource_http.dart';
import 'package:bookstore/data/model/book_respone_model.dart';
import 'package:bookstore/domain/repository/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookDatasourceDio _datasourceDio = BookDatasourceDio();
  final BookDatasourceHttp _datasourceHttp = BookDatasourceHttp();

  @override
  Future<BookResponeModel> getallNewBook(String query) async => await _datasourceHttp.getBooks(query);
}
  