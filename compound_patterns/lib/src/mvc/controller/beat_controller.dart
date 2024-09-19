import 'package:flutter/material.dart';

import '../model/beat/beat_model_interface.dart';
import '../view/dj_view.dart';
import 'controller_interface.dart';

class BeatController implements ControllerInterface {
  BeatModelInterface model;
  late DJView view;
  final viewKey = GlobalKey<DJViewState>();

  BeatController(this.model) {
    view = DJView(
      key: viewKey,
      title: "DJ Beat view",
      model: model,
      controller: this,
    );
    // Wait until the view is mounted
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewKey.currentState?.enableStartMenuItem();
      viewKey.currentState?.disableStopMenuItem();
    });
    model.initialize();
  }

  @override
  Widget getView() {
    return view;
  }

  @override
  void decreaseBPM() {
    int bpm = model.getBPM();
    model.setBPM(bpm - 1);
  }

  @override
  void increaseBPM() {
    int bpm = model.getBPM();
    model.setBPM(bpm + 1);
  }

  /// NOTE: the controller is making the intelligent decisions for the view.
  /// The view just knows how to turn menu items on and off;
  /// it doesn’t know the situations in which it should disable them.
  @override
  void start() {
    model.on();
    viewKey.currentState?.disableStartMenuItem();
    viewKey.currentState?.enableStopMenuItem();
    viewKey.currentState?.enableControlButtons();
  }

  /// NOTE: the controller is making the intelligent decisions for the view.
  /// The view just knows how to turn menu items on and off;
  /// it doesn’t know the situations in which it should disable them.
  @override
  void stop() {
    model.off();
    viewKey.currentState?.disableStopMenuItem();
    viewKey.currentState?.enableStartMenuItem();
    viewKey.currentState?.disableControlButtons();
  }

  /// Finally, if the user interface is used to set an arbitrary BPM,
  /// the controller instructs the model to set its BPM.
  @override
  void setBPM(int bpm) {
    model.setBPM(bpm);
  }
}
