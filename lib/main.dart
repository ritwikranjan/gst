import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gst/bindings/home_page_binding.dart';
import 'package:gst/screens/home_page.dart';
import 'package:gst/screens/search_page.dart';

import 'bindings/search_page_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GST Search',
      initialRoute: '/search',
      getPages: [
        GetPage(name: '/', page: () => const HomePage(), binding: HomePageBinding()),
        GetPage(name: '/search', page: () => const SearchPage(), binding: SearchPageBinding()),
      ],
    );
  }
}
