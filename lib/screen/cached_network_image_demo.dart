import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CacheNetworkImageDemo extends StatefulWidget {
  const CacheNetworkImageDemo({Key key}) : super(key: key);

  @override
  _CacheNetworkImageDemoState createState() => _CacheNetworkImageDemoState();
}

class _CacheNetworkImageDemoState extends State<CacheNetworkImageDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Demo"
        ),
      ),
      body: Container(
        child: Center(
          child: CachedNetworkImage(
            imageUrl: 'http://via.placeholder.com/350x150',
            placeholder: (context,url) => CircularProgressIndicator(),
          ),
        ),
      )
    );
  }
}
