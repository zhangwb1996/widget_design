///
/// File: \lib\src\preview\material_components\information_displays\tooltip\tooltip_preview3.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:42:06 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:43:28 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class TooltipPreview3 extends StatelessWidget {
  const TooltipPreview3({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tooltip(
      richMessage: TextSpan(
        text: 'I am a rich tooltip. ',
        style: TextStyle(color: Colors.red),
        children: <InlineSpan>[
          TextSpan(
            text: 'I am another span of this rich tooltip',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
      child: Text('Tap this text and hold down to show a tooltip.'),
    );
  }
}
