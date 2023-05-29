import 'package:bookstore/presentation/screen/detail/page/detail.dart';
import 'package:bookstore/presentation/screen/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final _controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: GetBuilder<HomeController>(
              init: _controller,
              initState: (state) => _controller.getBooks(),
              builder: (context) {
                return Column(
                  children: [
                    Form(
                      child: TextField(
                        controller: _controller.searchController.value,
                        onChanged: (value) => _controller.searchByText(value),
                      ),
                    ),
                    const Divider(),
                    Expanded(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: _controller.listofBooks.value.length,
                        separatorBuilder: (context, index) => const Divider(),
                        itemBuilder: (context, index) {
                          final book = _controller.listofBooks.value[index];

                          return InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(isbn13: book.isbn13 ?? ''))),
                            child: Ink(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 90,
                                    height: 90,
                                    child: Image.network(
                                      book.image ?? 'No Image',
                                      errorBuilder:
                                          (context, error, stackTrace) {
                                        return Container(
                                          height: 90,
                                          width: 90,
                                          color: Colors.red,
                                        );
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: Text(
                                      book.title ?? 'Empty',
                                      maxLines: 2,
                                      style: const TextStyle(
                                          color: Colors.black,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              })),
    );
  }
}
