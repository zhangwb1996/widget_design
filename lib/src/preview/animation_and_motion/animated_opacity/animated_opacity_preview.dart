///
/// File: \lib\src\preview\animation_and_motion\animated_opacity\animated_opacity_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 12:13:03 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 12:23:46 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class AnimatedOpacityPreview extends StatefulWidget {
  const AnimatedOpacityPreview({super.key});

  @override
  State<AnimatedOpacityPreview> createState() => AnimatedOpacityPreviewState();
}

class AnimatedOpacityPreviewState extends State<AnimatedOpacityPreview> {
  double opacityLevel = 1.0;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const FlutterLogo(),
        ),
        ElevatedButton(
          onPressed: _changeOpacity,
          child: const Text('Fade Logo'),
        ),
      ],
    );
  }
}
