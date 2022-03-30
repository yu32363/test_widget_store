import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_store/pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Widget Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        fontFamily: 'Prompt',
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const MyHomePage()),
      ],
    );
  }
}
