///
/// File: \lib\src\preview\interaction_models\touch_interactions\gesture_detector\nested_gesture_detector_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 5:56:10 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 6:00:21 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

enum _OnTapWinner { none, yellow, green }

class NestedGestureDetectorsPreview extends StatefulWidget {
  const NestedGestureDetectorsPreview({super.key});

  @override
  State<NestedGestureDetectorsPreview> createState() =>
      _NestedGestureDetectorsExampleState();
}

class _NestedGestureDetectorsExampleState
    extends State<NestedGestureDetectorsPreview> {
  bool _isYellowTranslucent = false;
  _OnTapWinner _winner = _OnTapWinner.none;
  final Border highlightBorder = Border.all(color: Colors.red, width: 5);

  @override
  void initState() {
    debugPrintGestureArenaDiagnostics = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: GestureDetector(
            onTap: () {
              debugPrint('Green onTap');
              setState(() {
                _winner = _OnTapWinner.green;
              });
            },
            onTapDown: (_) => debugPrint('Green onTapDown'),
            onTapCancel: () => debugPrint('Green onTapCancel'),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: _winner == _OnTapWinner.green ? highlightBorder : null,
                color: Colors.green,
              ),
              child: GestureDetector(
                // Setting behavior to transparent or opaque as no impact on
                // parent-child hit testing. A tap on 'Yellow' is also in
                // 'Green' bounds. Both enter the gesture arena, 'Yellow' wins
                // because it is in front.
                behavior: _isYellowTranslucent
                    ? HitTestBehavior.translucent
                    : HitTestBehavior.opaque,
                onTap: () {
                  debugPrint('Yellow onTap');
                  setState(() {
                    _winner = _OnTapWinner.yellow;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border:
                        _winner == _OnTapWinner.yellow ? highlightBorder : null,
                    color: Colors.amber,
                  ),
                  width: 200,
                  height: 200,
                  child: Text(
                    'HitTextBehavior.${_isYellowTranslucent ? 'translucent' : 'opaque'}',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              ElevatedButton(
                child: const Text('Reset'),
                onPressed: () {
                  setState(() {
                    _isYellowTranslucent = false;
                    _winner = _OnTapWinner.none;
                  });
                },
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                child: Text(
                  'Set Yellow behavior to ${_isYellowTranslucent ? 'opaque' : 'translucent'}',
                ),
                onPressed: () {
                  setState(() => _isYellowTranslucent = !_isYellowTranslucent);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    debugPrintGestureArenaDiagnostics = false;
    super.dispose();
  }
}
