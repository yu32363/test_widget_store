import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPage extends StatefulWidget {
  const WebviewPage({Key? key}) : super(key: key);

  @override
  _WebviewPageState createState() => _WebviewPageState();
}

class _WebviewPageState extends State<WebviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webview & Action'),
      ),
      body: const WebView(
        initialUrl: 'https://dtgo.com',
        // 'https://flutter-web-7b30b.web.app'
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
