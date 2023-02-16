///
/// File: \lib\src\preview\interaction_models\touch_interactions\gesture_detector\gesture_detector_preview_2.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 5:55:16 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 5:55:40 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class GestureDetectorPreview2 extends StatefulWidget {
  const GestureDetectorPreview2({super.key});

  @override
  State<GestureDetectorPreview2> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<GestureDetectorPreview2> {
  Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _color,
      height: 200.0,
      width: 200.0,
      child: GestureDetector(
        onTap: () {
          setState(() {
            _color == Colors.yellow
                ? _color = Colors.white
                : _color = Colors.yellow;
          });
        },
      ),
    );
  }
}
