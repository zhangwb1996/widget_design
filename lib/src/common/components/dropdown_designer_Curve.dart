///
/// File: \lib\src\common\components\dropdown_designer_Curve.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:30 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:26:31 pm
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

import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';

class DropdownDesignerCurve extends StatefulWidget {
  final Map<String, dynamic> items;

  const DropdownDesignerCurve({
    super.key,
    required this.items,
  });

  @override
  State<DropdownDesignerCurve> createState() => _DropdownDesignerCurveState();
}

class _DropdownDesignerCurveState extends State<DropdownDesignerCurve> {
  @override
  Widget build(BuildContext context) {
    debugPrint(
      "DropdownDesignerCurve.build",
    );
    return Consumer<AnimatedAlignModel>(
        builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: context.select((AnimatedAlignModel a) => a.curve),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (value) {
          animProperties.curve = value;
          animProperties.setCode();
        },
        items: widget.items.values.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(
              widget.items.keys.firstWhere(
                (k) => widget.items[k] == value,
                orElse: () => 'null',
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
