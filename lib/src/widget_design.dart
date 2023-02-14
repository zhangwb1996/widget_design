///
/// File: \lib\src\widget_design.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 3:10:42 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 2:33:28 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:widget_design/src/widgets_view/animation_and_motion/animated_align.dart';

import 'common/components/widget.dart';

class WidgetDesign extends StatefulWidget {
  const WidgetDesign({super.key});

  @override
  State<WidgetDesign> createState() => _WidgetDesignState();
}

class _WidgetDesignState extends State<WidgetDesign> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const AnimatedAlignWidget(),
        const VerticalDivider(),
        Expanded(
          child: Column(
            children: [
              Container(),
              CheckboxDesigner(),
              const RadioDesigner(),
              const NumberDesigner()
            ],
          ),
        ),
      ],
    );
  }
}
