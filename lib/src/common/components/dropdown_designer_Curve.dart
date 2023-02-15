///
/// File: \lib\src\common\components\dropdown_designer_curve.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:30 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 3:22:19 pm
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

class DropdownDesignerCurve<T extends AnimatedModel> extends StatelessWidget {
  final Map<String, dynamic> items;

  const DropdownDesignerCurve({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint(
      "DropdownDesignerCurve.build",
    );
    return Consumer<T>(builder: (context, animProperties, child) {
      return DropdownButton<dynamic>(
        value: context.select((T a) => a.curve),
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
        items: items.values.map<DropdownMenuItem<dynamic>>((value) {
          return DropdownMenuItem<dynamic>(
            value: value,
            child: Text(
              items.keys.firstWhere(
                (k) => items[k] == value,
                orElse: () => 'null',
              ),
            ),
          );
        }).toList(),
      );
    });
  }
}
