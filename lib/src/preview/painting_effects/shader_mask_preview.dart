///
/// File: \lib\src\preview\painting_effects\shader_mask_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:03:57 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:04:28 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///
import 'package:flutter/material.dart';

class ShaderMaskPreview extends StatelessWidget {
  const ShaderMaskPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return RadialGradient(
          center: Alignment.topLeft,
          radius: 1.0,
          colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
          tileMode: TileMode.mirror,
        ).createShader(bounds);
      },
      child: const Text('I’m burning the memories'),
    );
  }
}
