///
/// File: \lib\src\preview\material_components\information_displays\tooltip\tooltip_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:42:06 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:42:44 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class TooltipPreview1 extends StatelessWidget {
  const TooltipPreview1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      message: 'I am a Tooltip',
      child: Text('Hover over the text to show a tooltip.'),
    );
  }
}
