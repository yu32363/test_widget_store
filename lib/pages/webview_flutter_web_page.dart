import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewFlutterWebPage extends StatefulWidget {
  const WebviewFlutterWebPage({Key? key}) : super(key: key);

  @override
  _WebviewFlutterWebPageState createState() => _WebviewFlutterWebPageState();
}

class _WebviewFlutterWebPageState extends State<WebviewFlutterWebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview & Action'),
      ),
      body: const WebView(
        initialUrl: 'https://flutter-web-7b30b.web.app',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
