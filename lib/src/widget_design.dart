///
/// File: \lib\src\widget_design.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 3:10:42 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 5:22:30 pm
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
import 'package:widget_design/src/widgets_view/animation_and_motion/animated_align.dart';

import 'common/components/widget.dart';
import 'models/animation_and_motion/widget.dart';

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
              const CheckboxDesigner(),
              const RadioDesigner(),
              // Consumer<AnimationPropertiesModel>(
              //   builder: (context, animProperties, child) => DropdownDesigner(
              //     items: animProperties.listAlignment,
              //   ),
              // ),
              Selector<AnimationPropertiesModel, List<AlignmentGeometry>>(
                selector: (_, animProperties) => animProperties.listAlignment,
                builder: (context, list, child) => DropdownDesignerAlignment(
                  items: list,
                ),
              ),
              Selector<AnimationPropertiesModel, Map<String, Curve>>(
                selector: (_, animProperties) => animProperties.listCurve,
                builder: (context, list, child) => DropdownDesignerCurve(
                  items: list,
                ),
              ),
              const NumberDesigner()
            ],
          ),
        ),
      ],
    );
  }
}
