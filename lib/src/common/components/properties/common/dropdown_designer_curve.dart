///
/// File: \lib\src\common\components\dropdown_designer_curve.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:30 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:36:23 pm
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

import 'package:widget_design/src/models/widgets/base_model.dart';

class DropdownDesignerCurve<T extends BaseModel> extends StatelessWidget {
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
    return ListTile(
      leading: const Text(
        'curve',
        textAlign: TextAlign.left,
      ),
      title: Consumer<T>(
        builder: (context, model, child) {
          return DropdownButton<dynamic>(
            isExpanded: true,
            alignment: Alignment.centerLeft,
            value: context.select((T a) => a.curve),
            elevation: 16,
            style: const TextStyle(
              color: Colors.deepPurple,
              overflow: TextOverflow.ellipsis,
            ),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              model.curve = value;
              model.setCode();
            },
            items: items.values.map<DropdownMenuItem<dynamic>>((value) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Text(
                  items.keys.firstWhere(
                    (k) => items[k] == value,
                    orElse: () => 'null',
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
