import 'package:bookstore/presentation/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    print('hello');
    print(_controller.listofBooks.value.length.toString());
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: _controller,
        initState: (state) => _controller.getBooks(),
        builder: (context) {
          return ListView.builder(
            itemCount: _controller.listofBooks.value.length,
            itemBuilder: (context, index) {

              final book = _controller.listofBooks.value[index];
              
              return Text(
                book.title ?? 'Empty',
                style: const TextStyle(
                  color: Colors.black
                ),
              );
            },
          );
        }
      )
    );
  }
}
