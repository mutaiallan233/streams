import 'dart:async';

import 'package:flutter/material.dart';
import 'package:streams/screens/manualStream.dart';

class Home extends StatelessWidget {

 // StreamController<double> controller = StreamController(); //single Stream
 // StreamController<double> controller = StreamController<double>.broadcast();//broadcast stream
  StreamController<double> controller = StreamController<double>();//saves all value emissions until you get your first subscriber... THis is sing subscription
  //reference our stream subscription
  StreamSubscription<double> streamSubscription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Working with Streams'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              child: Text('subscribe'),
              color: Colors.yellow[200],
              onPressed: () async {
               /* //stream the controller manages
                Stream stream = controller.stream;
                streamSubscription = stream.listen((value) {
                  print('Value from the controller! $value');
                });*/
               getDelayedRandomValue().listen((value) {
                 print('Value from manualStream: ${value}');
               });
              },
            ),
            MaterialButton(
              child: Text('Emit Value'),
              color: Colors.red[200],
              // this button will emit values from the controller
              onPressed: () {
               controller.add(12);
              },
            ),
            MaterialButton(
              child: Text('Unsubscribe'),
              color: Colors.blue[200],
              onPressed: () {
                streamSubscription.cancel();
              },
            ),
          ],
        ),
      ),
    );
  }
}
