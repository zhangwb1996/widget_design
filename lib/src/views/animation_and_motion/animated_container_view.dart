///
/// File: \lib\src\views\animation_and_motion\animated_container_view.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:12:32 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 9:58:33 pm
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

class AnimatedContainerView extends StatelessWidget {
  const AnimatedContainerView({super.key});
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // main content widget
        Expanded(
          child: Column(
            children: [
              // widget view
              const Expanded(child: AnimatedContainerWidget()),
              const Divider(),
              // syntax highlighting
              // TODO: show dart code with syntax highlighting and copy code by one key
              Selector<AnimatedContainerModel, String>(
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
        // designer components
        SizedBox(
          width: 300,
          child: Column(
            children: [
              // const CheckboxDesigner(),
              // const RadioDesigner(),
              Selector<AnimatedContainerModel, List<AlignmentGeometry>>(
                selector: (_, animProperties) => AlignmentList.listAlignment,
                builder: (context, list, child) =>
                    DropdownDesignerAlignment<AnimatedContainerModel>(
                  items: list,
                ),
              ),
              Selector<AnimatedAlignModel, Map<String, Curve>>(
                selector: (_, animProperties) => CurveMap.mapCurve,
                builder: (context, list, child) =>
                    DropdownDesignerCurve<AnimatedContainerModel>(
                  items: list,
                ),
              ),
              const NumberDesignerDuration<AnimatedContainerModel>(),
            ],
          ),
        ),
      ],
    );
  }
}