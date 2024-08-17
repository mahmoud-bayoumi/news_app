import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Webview extends StatefulWidget {
  final String uri;
  const Webview({super.key, required this.uri});

  @override
  State<Webview> createState() => _WebviewState();
}

class _WebviewState extends State<Webview> {
  late final controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.uri));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: WebViewWidget(
      controller: controller,
    ));
  }
}
