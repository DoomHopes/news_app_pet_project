import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

//Not used
class WebViewWidget extends StatelessWidget {
  WebViewWidget({this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: WebView(
        initialUrl: url,
      ),
    );
  }
}
