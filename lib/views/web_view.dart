import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatelessWidget {
  const WebViewScreen({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Daily",
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Text(
              "News ",
              style: TextStyle(
                color: Color.fromARGB(255, 242, 58, 58),
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
          ],
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: WebView(
        initialUrl: url,
      ),
    );
  }
}
