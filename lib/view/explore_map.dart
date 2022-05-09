import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ExploreMap extends StatefulWidget {
  final String nama;
  final String url;

  ExploreMap({required this.nama, required this.url});

  @override
  _ExploreMapState createState() =>
      _ExploreMapState(namaTempat: nama, urlTempat: url);
}

class _ExploreMapState extends State<ExploreMap> {
  final String namaTempat;
  final String urlTempat;
  _ExploreMapState({required this.namaTempat, required this.urlTempat});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(namaTempat),
      ),
      body: WebView(
        initialUrl: urlTempat,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
