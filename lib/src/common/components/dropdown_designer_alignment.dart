///
/// File: \lib\src\common\components\dropdown_designer_alignment.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:55 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:26:02 pm
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

class DropdownDesignerAlignment extends StatefulWidget {
  final List<dynamic> items;

  const DropdownDesignerAlignment({
    super.key,
    required this.items,
  });

  @override
  State<DropdownDesignerAlignment> createState() =>
      _DropdownDesignerAlignmentState();
}

class _DropdownDesignerAlignmentState extends State<DropdownDesignerAlignment> {
  @override
  Widget build(BuildContext context) {
    debugPrint(
      "DropdownDesignerAlignment.build",
    );
    return Consumer<AnimatedAlignModel>(
        builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: context.select((AnimatedAlignModel a) => a.alignment),
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (value) {
          animProperties.alignment = value;
          animProperties.setCode();
        },
        items: widget.items.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
      );
    });
  }
}
