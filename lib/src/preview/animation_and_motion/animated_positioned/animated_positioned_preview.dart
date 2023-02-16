///
/// File: \lib\src\preview\animation_and_motion\animated_positioned_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 12:49:14 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 12:51:08 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class AnimatedPositionedPreview extends StatefulWidget {
  const AnimatedPositionedPreview({super.key});

  @override
  State<AnimatedPositionedPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimatedPositionedPreview> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: Stack(
        children: <Widget>[
          AnimatedPositioned(
            width: selected ? 200.0 : 50.0,
            height: selected ? 50.0 : 200.0,
            top: selected ? 50.0 : 150.0,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                color: Colors.blue,
                child: const Center(child: Text('Tap me')),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
