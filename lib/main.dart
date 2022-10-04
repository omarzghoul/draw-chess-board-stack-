import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  double num = double.infinity;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade700,
      ),
      body: Stack(
        children: [
          stackRow1(width, 720),
          stackRow2(width, 660),
          stackRow1(width, 600),
          stackRow2(width, 540),
          stackRow1(width, 480),
          stackRow2(width, 420),
          stackRow1(width, 360),
          stackRow2(width, 300),
          stackRow1(width, 240),
          stackRow2(width, 180),
          stackRow1(width, 120),
          stackRow2(width, 60),
        ],
      ),
    );
  }

  Widget blackContainer(double width, num, double height) {
    return Container(
      width: width - num,
      height: height,
      child: Text(""),
      color: Colors.black,
    );
  }

  Widget greyContainer(double width, num, double height) {
    return Container(
      width: width - num,
      height: height,
      child: Text(""),
      color: Colors.grey,
    );
  }

  Widget stackRow2(double width, double height) {
    return Stack(
      children: [
        blackContainer(width, 0, height),
        greyContainer(width, 49, height),
        blackContainer(width, 98, height),
        greyContainer(width, 147, height),
        blackContainer(width, 196, height),
        greyContainer(width, 245, height),
        blackContainer(width, 290, height),
        greyContainer(width, 339, height),
      ],
    );
  }

  Widget stackRow1(double width, double height) {
    return Stack(
      children: [
        greyContainer(width, 0, height),
        blackContainer(width, 49, height),
        greyContainer(width, 98, height),
        blackContainer(width, 147, height),
        greyContainer(width, 196, height),
        blackContainer(width, 245, height),
        greyContainer(width, 290, height),
        blackContainer(width, 339, height),
      ],
    );
  }
}
