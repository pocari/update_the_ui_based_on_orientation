import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: OrientationPage(),
    );
  }
}

class OrientationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('orientation test'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
            6,
            (index) => Center(
              child: Text(
                "Item $index",
                style: Theme.of(context).textTheme.headline,
              ),
            ),
          ),
        ),
      );
}
