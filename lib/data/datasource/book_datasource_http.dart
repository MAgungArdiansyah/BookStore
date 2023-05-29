import 'dart:convert';

import 'package:bookstore/constants/constants.dart';
import 'package:bookstore/data/model/book_respone_model.dart';
import 'package:http/http.dart' as client; 


class BookDatasourceHttp{
  Future<BookResponeModel> getBooks(String query) async {
    try {
      final urlpath = Constants.allNewBook + query;

      final response = await client.get(Uri.parse('https://api.itbook.store/1.0/search/Flutter Developer'));

      if (response.statusCode == 200) {
        return BookResponeModel.fromJson(
          json.decode(response.body)
        );
      }
      return BookResponeModel();
    } catch (e) {
      rethrow;
    }
  }
}