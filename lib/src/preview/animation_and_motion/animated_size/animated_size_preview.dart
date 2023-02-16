///
/// File: \lib\src\preview\animation_and_motion\animated_size\animated_size_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 12:59:46 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 1:00:11 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class AnimatedSizePreview extends StatefulWidget {
  const AnimatedSizePreview({super.key});

  @override
  State<AnimatedSizePreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimatedSizePreview> {
  double _size = 50.0;
  bool _large = false;

  void _updateSize() {
    setState(() {
      _size = _large ? 250.0 : 100.0;
      _large = !_large;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _updateSize(),
      child: Container(
        color: Colors.amberAccent,
        child: AnimatedSize(
          curve: Curves.easeIn,
          duration: const Duration(seconds: 1),
          child: FlutterLogo(size: _size),
        ),
      ),
    );
  }
}
