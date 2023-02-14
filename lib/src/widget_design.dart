///
/// File: \lib\src\widget_design.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 3:10:42 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 11:31:14 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

import 'package:widget_design/src/views/animation_and_motion/widget.dart';

class WidgetDesign extends StatefulWidget {
  const WidgetDesign({super.key});

  @override
  State<WidgetDesign> createState() => _WidgetDesignState();
}

class _WidgetDesignState extends State<WidgetDesign> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Placeholder(fallbackWidth: 200),
        VerticalDivider(),
        Expanded(
          child: AnimatedAlignView(),
        ),
        // the two providers are different
        // Expanded(
        //   child: AnimatedAlignView(),
        // ),
      ],
    );
  }
}
