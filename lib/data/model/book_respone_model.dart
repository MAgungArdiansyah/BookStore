import 'package:bookstore/data/model/book_model.dart';

class BookResponeModel {
  BookResponeModel({
    this.error,
    this.total,
    this.books,
  });

  final String? error;
  final String? total;
  final List<BookModel>? books;

  factory BookResponeModel.fromJson(Map<String, dynamic> json) =>
      BookResponeModel(
        error: json["error"],
        total: json["total"],
        books: json["books"] == null
            ? []
            : List<BookModel>.from(
                json["books"]!.map((x) => BookModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "total": total,
        "books": books == null
            ? []
            : List<dynamic>.from(books!.map((x) => x.toJson())),
      };
}
