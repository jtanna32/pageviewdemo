import 'package:flutter/material.dart';
import 'package:pageviewdemo/screen/ShimmerDemo.dart';
import 'package:pageviewdemo/screen/cached_network_image_demo.dart';
import 'package:pageviewdemo/screen/image_picker_demo.dart';
import 'package:pageviewdemo/screen/webview_demo.dart';
import 'package:pageviewdemo/screen/expansion_demo_screen.dart';
import 'package:pageviewdemo/screen/page_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ImagePickerDemo(),
    );
  }
}
