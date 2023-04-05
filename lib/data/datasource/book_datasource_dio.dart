import 'package:bookstore/constants/constants.dart';
import 'package:bookstore/data/model/book_respone_model.dart';
import 'package:dio/dio.dart';

class BookDatasourceDio {
  final Dio _client = Dio();
  Future<BookResponeModel> getBooks() async {
    try {
      final urlPath = Constants.allNewBook;

      final respone = await _client.get(urlPath).whenComplete(() => print('done'));


      if (respone.statusCode == 200) {
        return BookResponeModel.fromJson(respone.data);
      } 
      return BookResponeModel();
      

    } catch (e) {
      rethrow;
    }
    
  }
}