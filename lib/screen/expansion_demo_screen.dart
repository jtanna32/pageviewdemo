import 'package:flutter/material.dart';

class ExpansionDemo extends StatefulWidget {
  const ExpansionDemo({Key key}) : super(key: key);

  @override
  _ExpansionDemoState createState() => _ExpansionDemoState();
}

class _ExpansionDemoState extends State<ExpansionDemo> {
  var val = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo"),
      ),
      body: Container(
        child: Column(
          children: [
            ExpansionPanelList(
              expansionCallback: (int index, bool isExpanded) {
                print("hello " + isExpanded.toString());
                setState(() {
                  val = !isExpanded;
                });
              },
              children: [
                ExpansionPanel(
                  isExpanded: val,
                  headerBuilder: (context, isExpaned) {
                    return Container(
                      color: Colors.red,
                    );
                  },
                  body: Container(
                    height: 50,
                    color: Colors.yellow,
                  ),
                ),
                ExpansionPanel(
                  headerBuilder: (context, isExpaned) {
                    return Container(
                      color: Colors.blue,
                    );
                  },
                  body: Container(
                    color: Colors.orange,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
