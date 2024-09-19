import 'package:flutter/material.dart';

import 'controller/beat_controller.dart';
import 'controller/controller_interface.dart';
import 'model/beat/beat_model.dart';
// import 'controller/heart_controller.dart';
// import 'model/heart/heart_model.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  // First create a model...
  final BeatModel model = BeatModel();
  // ...then create a controller and pass it the model.
  // Remember, the controller creates the view when it initializes
  late final ControllerInterface controller = BeatController(model);

  // // First create a model...
  // final HeartModel model = HeartModel();
  // // ...then create a controller and pass it the model.
  // // Remember, the controller creates the view when it initializes
  // late final ControllerInterface controller = HeartController(model);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: controller.getView(),
    );
  }
}
