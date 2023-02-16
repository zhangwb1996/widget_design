///
/// File: \lib\src\preview\interaction_models\touch_interactions\gesture_detector\mouse_region_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 6:02:16 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 6:02:39 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class MouseRegionPreview extends StatefulWidget {
  const MouseRegionPreview({super.key});

  @override
  State<MouseRegionPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MouseRegionPreview> {
  int _enterCounter = 0;
  int _exitCounter = 0;
  double x = 0.0;
  double y = 0.0;

  void _incrementEnter(PointerEvent details) {
    setState(() {
      _enterCounter++;
    });
  }

  void _incrementExit(PointerEvent details) {
    setState(() {
      _exitCounter++;
    });
  }

  void _updateLocation(PointerEvent details) {
    setState(() {
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tight(const Size(300.0, 200.0)),
      child: MouseRegion(
        onEnter: _incrementEnter,
        onHover: _updateLocation,
        onExit: _incrementExit,
        child: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                  'You have entered or exited this box this many times:'),
              Text(
                '$_enterCounter Entries\n$_exitCounter Exits',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text(
                'The cursor is here: (${x.toStringAsFixed(2)}, ${y.toStringAsFixed(2)})',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
