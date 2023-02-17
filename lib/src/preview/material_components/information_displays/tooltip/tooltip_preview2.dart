///
/// File: \lib\src\preview\material_components\information_displays\tooltip\tooltip_preview2.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:42:06 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:42:59 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class TooltipPreview2 extends StatelessWidget {
  const TooltipPreview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'I am a Tooltip',
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient:
            const LinearGradient(colors: <Color>[Colors.amber, Colors.red]),
      ),
      height: 50,
      padding: const EdgeInsets.all(8.0),
      preferBelow: false,
      textStyle: const TextStyle(
        fontSize: 24,
      ),
      showDuration: const Duration(seconds: 2),
      waitDuration: const Duration(seconds: 1),
      child: const Text('Tap this text and hold down to show a tooltip.'),
    );
  }
}
