import 'package:flutter/material.dart';
import 'package:widget_store/pages/dropdown_page.dart';
import 'package:widget_store/pages/name_card_page.dart';
import 'package:widget_store/pages/promotion_page.dart';
import 'package:widget_store/pages/sliver_page.dart';
import 'package:widget_store/pages/webview_flutter_web_page.dart';
import 'package:widget_store/pages/webview_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List widgetList = [
    {
      'widgetTitle': 'Promotion & Event Card',
      'widgetPage': const PromotionPage(),
    },
    {
      'widgetTitle': 'Webview',
      'widgetPage': const WebviewPage(),
    },
    {
      'widgetTitle': 'Webview Flutter Web',
      'widgetPage': const WebviewFlutterWebPage(),
    },
    {
      'widgetTitle': 'Sliver',
      'widgetPage': const SliverPage(),
    },
    {
      'widgetTitle': 'Dropdown',
      'widgetPage': const DropdownPage(),
    },
    {
      'widgetTitle': 'Name Card',
      'widgetPage': const NameCardPage(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Store'),
      ),
      body: ListView.builder(
        itemCount: widgetList.length,
        itemBuilder: (context, index) {
          return ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widgetList[index]['widgetPage'],
                ),
              );
            },
            child: Text(
              widgetList[index]['widgetTitle'],
            ),
          );
        },
      ),
    );
  }
}
