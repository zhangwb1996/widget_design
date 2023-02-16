///
/// File: \lib\src\views\animation_and_motion\animated_opacity_view.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:01:08 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:11:42 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:widget_design/src/common/components/widget.dart';
import 'package:widget_design/src/common/tools/widget.dart';
import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';
import 'package:widget_design/src/widgets/animation_and_motion/widget.dart';

class AnimatedOpacityView extends StatelessWidget {
  const AnimatedOpacityView({super.key});
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // main content
        Expanded(
          child: Column(
            children: [
              // widget view
              const Expanded(child: AnimatedOpacityWidget()),
              const Divider(),
              // syntax highlighting
              Selector<AnimatedOpacityModel, String>(
                selector: (_, animProperties) => animProperties.code,
                builder: (context, code, child) => SyntaxHighlight(
                  code: code,
                ),
              ),
            ],
          ),
        ),
        // divider
        const VerticalDivider(),
        // designer
        SizedBox(
          width: 300,
          child: Column(
            children: const [
              NumberDesigner<AnimatedOpacityModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
