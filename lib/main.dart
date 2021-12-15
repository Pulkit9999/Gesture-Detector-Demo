import 'package:flutter/material.dart';

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
  Color color = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gesture Detector'),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              color = Colors.blue;
            });
          },
          onDoubleTap: () {
            setState(() {
              color = Colors.green;
            });
          },
          onHorizontalDragStart: (DragStartDetails details) {
            setState(() {
              color = Colors.white;
            });
          },
          onHorizontalDragEnd: (DragEndDetails details) {
            setState(() {
              color = Colors.black;
            });
          },
          onVerticalDragStart: (DragStartDetails details) {
            setState(() {
              color = Colors.orange;
            });
          },
          onVerticalDragEnd: (DragEndDetails details) {
            print(details.primaryVelocity);
            setState(() {
              color = Colors.yellow;
            });
          },
          onLongPress: () {
            setState(() {
              color = Colors.red;
            });
          },
          child: Container(
            color: color,
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }
}
