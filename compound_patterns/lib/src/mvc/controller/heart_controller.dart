import 'package:flutter/widgets.dart';

import '../model/heart/heart_model_adapter.dart';
import '../model/heart/heart_model_interface.dart';
import '../view/dj_view.dart';
import 'controller_interface.dart';

class HeartController implements ControllerInterface {
  HeartModelInterface model;
  late DJView view;
  final viewKey = GlobalKey<DJViewState>();

  HeartController(this.model) {
    view = DJView(
      key: viewKey,
      title: "Heart Rate view",
      model: HeartModelAdapter(model),
      controller: this,
    );
    // Wait until the view is mounted
    WidgetsBinding.instance.addPostFrameCallback((_) {
      viewKey.currentState?.disableStartMenuItem();
      viewKey.currentState?.disableStopMenuItem();
    });
  }

  @override
  Widget getView() {
    return view;
  }

  @override
  void start() {}

  @override
  void stop() {}

  @override
  void decreaseBPM() {}

  @override
  void increaseBPM() {}

  @override
  void setBPM(int bpm) {}
}
