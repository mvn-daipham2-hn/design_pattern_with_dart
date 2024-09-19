import 'dart:core';

import 'package:flutter/material.dart';

import '../controller/controller_interface.dart';
import '../model/beat/beat_model_interface.dart';
import '../model/beat/beat_observer.dart';
import '../model/beat/bpm_observer.dart';

class DJView extends StatefulWidget {
  const DJView({
    Key? key,
    required this.model,
    required this.controller,
    this.title,
  }) : super(key: key);
  final BeatModelInterface model;
  final ControllerInterface controller;
  final String? title;

  @override
  State<DJView> createState() => DJViewState();
}

class DJViewState extends State<DJView> implements BeatObserver, BPMObserver {
  final TextEditingController _bpmTextController = TextEditingController();
  bool _startMenuItemEnabled = false;
  bool _stopMenuItemEnabled = false;
  bool _controlButtonsEnabled = false;
  final double maxBeat = 100;
  double _beat = 0;
  String _bpmOutputLabel = "offline";

  @override
  void initState() {
    super.initState();
    widget.model.registerBeatObserver(this);
    widget.model.registerBPMObserver(this);
  }

  @override
  void dispose() {
    super.dispose();
    _bpmTextController.dispose();
  }

  @override
  void updateBPM() {
    int bpm = widget.model.getBPM();
    if (bpm == 0) {
      _bpmOutputLabel = "offline";
      setState(() {});
    } else {
      _bpmOutputLabel = "Current BPM: $bpm";
      setState(() {});
    }
  }

  @override
  void updateBeat() {
    _beat = widget.model.getBPM() as double;
    setState(() {});
  }

  void enableStopMenuItem() {
    _stopMenuItemEnabled = true;
    setState(() {});
  }

  void disableStopMenuItem() {
    _stopMenuItemEnabled = false;
    setState(() {});
  }

  void enableStartMenuItem() {
    _startMenuItemEnabled = true;
    setState(() {});
  }

  void disableStartMenuItem() {
    _startMenuItemEnabled = false;
    setState(() {});
  }

  void enableControlButtons() {
    _controlButtonsEnabled = true;
    setState(() {});
  }

  void disableControlButtons() {
    _controlButtonsEnabled = false;
    setState(() {});
  }

  double _getBeatBarRatioValue(double value) {
    return value / maxBeat > 1 ? 1 : value / maxBeat;
  }

  Widget _createDisplayBeatView() {
    return Column(
      children: [
        Row(
          children: [
            Text(
              widget.title ?? 'View',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8,
          ),
          child: Divider(
            color: Colors.black,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: TweenAnimationBuilder<double>(
            duration: const Duration(seconds: 2),
            curve: Curves.bounceInOut,
            tween: Tween<double>(
              begin: 0,
              end: _beat,
            ),
            builder: (context, value, _) => LinearProgressIndicator(
              color: Colors.black,
              backgroundColor: Colors.grey,
              minHeight: 20,
              value: _getBeatBarRatioValue(value),
            ),
          ),
        ),
        Text(_bpmOutputLabel),
      ],
    );
  }

  Align _createMenuControl() {
    return Align(
      alignment: Alignment.topLeft,
      child: MenuAnchor(
        menuChildren: <Widget>[
          MenuItemButton(
            onPressed: !_startMenuItemEnabled
                ? null
                : () {
                    widget.controller.start();
                  },
            child: const Text(
              'Start',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MenuItemButton(
            onPressed: !_stopMenuItemEnabled
                ? null
                : () {
                    widget.controller.stop();
                  },
            child: const Text(
              'Stop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MenuItemButton(
            onPressed: () {},
            child: const Text(
              'Quit',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
        builder: (
          BuildContext context,
          MenuController controller,
          Widget? child,
        ) {
          return TextButton(
            onPressed: () {
              controller.isOpen ? controller.close() : controller.open();
            },
            child: const Text(
              'DJ Control',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _createDivider() {
    return const Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Divider(
        color: Colors.black,
      ),
    );
  }

  Widget _createBPMInput() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 8),
          child: Text("Enter BPM"),
        ),
        Expanded(
          child: TextField(
            controller: _bpmTextController,
            enabled: _controlButtonsEnabled,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _createControlButtons() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ElevatedButton(
            onPressed: !_controlButtonsEnabled
                ? null
                : () {
                    int bpm = int.tryParse(_bpmTextController.text) ?? -1;
                    if (bpm != -1) {
                      widget.controller.setBPM(bpm);
                    }
                  },
            child: const Text(
              'Set',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: !_controlButtonsEnabled
                    ? null
                    : () {
                        widget.controller.decreaseBPM();
                      },
                child: const Text('<<'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: !_controlButtonsEnabled
                    ? null
                    : () {
                        widget.controller.increaseBPM();
                      },
                child: const Text('>>'),
              ),
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(16),
              child: _createDisplayBeatView(),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(64),
            child: Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _createMenuControl(),
                  _createDivider(),
                  _createBPMInput(),
                  _createControlButtons(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
