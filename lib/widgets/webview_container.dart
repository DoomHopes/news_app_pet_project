import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatefulWidget {
  final url;
  final source;

  WebViewContainer(this.url, this.source);

  @override
  createState() => _WebViewContainerState(this.url, this.source);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  String _source;
  final _key = UniqueKey();

  _WebViewContainerState(this._url, this._source);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_source),
          backgroundColor: Colors.amberAccent,
        ),
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javaScriptMode: JavaScriptMode.disabled,
                    initialUrl: _url))
          ],
        ));
  }
}
