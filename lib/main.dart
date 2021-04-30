import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "State Test",
      home: Scaffold(
        appBar: AppBar(
          title: Text('State Text'),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'press to increment $number',
                  textScaleFactor: 2.0,
                ),
                MaterialButton(
                  onPressed: () {
                    number++;
                    setState(() {});
                  },
                  child: Text("Press"),
                  color: Colors.green,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
