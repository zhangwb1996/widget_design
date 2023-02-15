///
/// File: \lib\src\common\components\dropdown_designer_alignment.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:55 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 3:21:27 pm
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

class DropdownDesignerAlignment<T extends AnimatedModel>
    extends StatelessWidget {
  final List<dynamic> items;

  const DropdownDesignerAlignment({
    super.key,
    required this.items,
  });
  @override
  Widget build(BuildContext context) {
    debugPrint(
      "DropdownDesignerAlignment.build",
    );
    return Consumer<T>(builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: context.select((T a) => a.alignment),
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
        items: items.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(value.toString()),
          );
        }).toList(),
      );
    });
  }
}
