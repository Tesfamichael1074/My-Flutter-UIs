import 'dart:math';

import 'package:flutter/material.dart';

import 'card1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UIs"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Card1()],
        ),
      ),
    );
  }
}

class CardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect myRect = const Offset(0, 0) & Size(size.width, size.height);

    Paint rect = new Paint()
      ..color = Colors.red
      ..strokeWidth = 2;

    final curvePath = Path()
      ..moveTo(50, 50)
      ..arcTo(myRect, -pi, pi, false)
      ..lineTo(70, 70);
    // ..lineTo(bounds.topRight.dx, bounds.topRight.dy) //7
    // ..quadraticBezierTo(handlePoint.dx, handlePoint.dy,
    //     bounds.bottomLeft.dx, bounds.bottomLeft.dy) //8
    // ..close(); //9

    //10
    canvas.drawPath(curvePath, rect);

    // canvas.drawRect(myRect, rect);
  }

  @override
  bool shouldRepaint(CardPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CardPainter oldDelegate) => false;
}
