import 'package:bookstore/data/model/book_model.dart';
import 'package:bookstore/data/repository/book_repository_impl.dart';
import 'package:bookstore/domain/repository/book_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final BookRepository _repository = BookRepositoryImpl();

  Rx<List<BookModel>> listofBooks = Rx([]);
  Rx<TextEditingController> searchController = Rx(TextEditingController());

  void getBooks() async {
    final respone = await _repository.getallNewBook('');
    listofBooks(respone.books);
    update();
  }

  void searchByText(String input) {
    // searchController.value.text = input;

    print(searchController.value.text);
  }
}
