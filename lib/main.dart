import 'package:flutter/material.dart';
import 'package:streams/screens/home.dart';

// Stream work like a a pipe
//you have values on one end
//and a listener on the other
//you need to mange the subscription of a stream
//and terminate subscription of a stream
//stream subscription allows you to manage a stream like pause, error handling
// we do this by keeping a reference to our stream subscription
//there are two types of streams, single streams and broadcast streams
//single streams tend to give bad state error of Stream has already been listened to
// this error is handled by changing single stream controller to a broadcast controller
//building of manual streams

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

