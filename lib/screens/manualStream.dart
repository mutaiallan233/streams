import 'dart:math';

import 'package:flutter/material.dart';


/*Future<double> getDelayedRandomValue() async {

  var random = Random();

  await Future.delayed(Duration(seconds: 1));
  return random.nextDouble();
}*/
//create async function that will emmit random values every second
//chane future to Stream and secondly add * after the async keyword
//wrap this function to infinite while loop and change return to yield
Stream<double> getDelayedRandomValue() async* {

  var random = Random();

  while(true)
  {
    await Future.delayed(Duration(seconds: 1));
    yield random.nextDouble();
  }
}