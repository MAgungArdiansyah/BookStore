import 'package:bookstore/presentation/screen/detail/controller/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final String isbn13;
  DetailPage({super.key, required this.isbn13});
  final _controller = Get.put(DetaController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detail Page',
          maxLines: 2,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis
          ),
        ),
      ),
      body: GetBuilder<DetaController>(
        init: _controller,
        initState: (state) => _controller.getDetail(isbn13),
        builder: (context) {
          return Text(
            _controller.book.value.title ?? 'siwah'
          );
        }
      )
    );
  }
}