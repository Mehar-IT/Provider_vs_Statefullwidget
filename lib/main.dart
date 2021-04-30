import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_test/model/incrementModel.dart';

void main() {
  runApp(ChangeNotifierProvider<Increment>(
    create: (context) => Increment(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
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
                /*
                Here we can use Consumer like taat
                Consumer<Increment>(
                    builder: (context, object, widget) => Text(
                          'press to increment ${object.number}',
                          textScaleFactor: 2.0,
                        )),
                */
                Text(
                  'press to increment ${Provider.of<Increment>(context, listen: true).number}',
                  textScaleFactor: 2.0,
                ),
                MaterialButton(
                  onPressed: () {
                    Provider.of<Increment>(context, listen: false).add();
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
