import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst/controllers/search_page_controller.dart';

class SearchPage extends GetView<SearchPageController> {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(200),
          child: Container(
            padding: const EdgeInsets.all(8),
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Stack(
              children: [
                const Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 30.0,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        'GST Number Search Tool',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Search GST Number',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Search by GST Number',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  Material(
                    color: Colors.grey[200],
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      child: TextField(
                        controller: controller.searchController,
                        decoration: const InputDecoration(
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: UnderlineInputBorder(),
                          hintText: 'GST Number (integer from 1 to 50)',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: controller.searchUser,
                child: const Text('Search', style: TextStyle(fontSize: 18.0, color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      const EdgeInsets.symmetric(vertical: 12.0, horizontal: 18.0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
