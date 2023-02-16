///
/// File: \lib\src\preview\animation_and_motion\animated_builder\twreen_animated_builder.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 3:29:36 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 3:31:06 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class TweenAnimationBuilderPreview extends StatefulWidget {
  const TweenAnimationBuilderPreview({super.key});

  @override
  State<TweenAnimationBuilderPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TweenAnimationBuilderPreview> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween<double>(begin: 0, end: targetValue),
      duration: const Duration(seconds: 1),
      builder: (BuildContext context, double size, Widget? child) {
        return IconButton(
          iconSize: size,
          color: Colors.blue,
          icon: child!,
          onPressed: () {
            setState(() {
              targetValue = targetValue == 24.0 ? 48.0 : 24.0;
            });
          },
        );
      },
      child: const Icon(Icons.aspect_ratio),
    );
  }
}
