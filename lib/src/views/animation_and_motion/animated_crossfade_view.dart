///
/// File: \lib\src\views\animation_and_motion\animated_crossfade_view.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:01:08 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 11:23:56 am
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
import 'package:widget_design/src/models/properties/default/widget.dart';
import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';
import 'package:widget_design/src/widgets/animation_and_motion/widget.dart';

class AnimatedCrossFadeView extends StatelessWidget {
  const AnimatedCrossFadeView({super.key});
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
              const Expanded(child: AnimatedCrossFadeWidget()),
              const Divider(),
              // syntax highlighting
              Selector<AnimatedCrossFadeModel, String>(
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
              // TODO: Hot reload
              // Solved by import as package instead of absolute path
              // const CheckboxDesigner(),
              // const RadioDesigner(),
              // Selector<AnimatedCrossFadeModel, List<AlignmentGeometry>>(
              //   selector: (_, animProperties) => AlignmentList.listAlignment,
              //   builder: (context, list, child) =>
              //       DropdownDesignerAlignment<AnimatedCrossFadeModel>(
              //     items: list,
              //   ),
              // ),
              // Selector<AnimatedCrossFadeModel, Map<String, Curve>>(
              //   selector: (_, animProperties) => CurveMap.mapCurve,
              //   builder: (context, list, child) =>
              //       DropdownDesignerCurve<AnimatedCrossFadeModel>(
              //     items: list,
              //   ),
              // ),
              NumberDesigner<AnimatedCrossFadeModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
