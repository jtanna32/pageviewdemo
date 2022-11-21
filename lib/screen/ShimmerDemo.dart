import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerDemo extends StatefulWidget {
  const ShimmerDemo({Key key}) : super(key: key);

  @override
  _ShimmerDemoState createState() => _ShimmerDemoState();
}

class _ShimmerDemoState extends State<ShimmerDemo> {

  Future<String> getData() async{
    return Future.delayed(Duration(seconds: 6)).then((value) => "Hello world");
  }

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
          child: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if(snapshot.hasData){
                return Container(
                  color: Colors.blue,
                  height: 50,
                  width: MediaQuery.of(context).size.width / 3,
                  child: Center(
                    child: Text(
                        snapshot.data,
                        style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              } else {
                return Shimmer.fromColors(
                  baseColor: Colors.red,
                  highlightColor: Colors.grey.shade300,
                  period: Duration(seconds: 2),
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.red,
                  ),
                );
              }
            }
          )
        ),
      ),
    );
  }
}
