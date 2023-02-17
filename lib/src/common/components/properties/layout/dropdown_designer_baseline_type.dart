///
/// File: \lib\src\common\components\dropdown_designer_baseline_type.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:13:55 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 1:35:49 pm
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

import 'package:widget_design/src/models/widgets/layout/base/layout_model.dart';

class DropdownDesignerBaselineType<T extends LayoutModel>
    extends StatelessWidget {
  final List<dynamic> items;

  const DropdownDesignerBaselineType({
    super.key,
    required this.items,
  });
  @override
  Widget build(BuildContext context) {
    debugPrint(
      "DropdownDesignerBaseline.build",
    );
    return ListTile(
      leading: const Text('baselineType'),
      title: Consumer<T>(
        builder: (context, model, child) {
          return DropdownButton<dynamic>(
            value: context.select((T a) => a.baselineType),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              model.baselineType = value;
              model.setCode();
            },
            items: items.map<DropdownMenuItem<dynamic>>((value) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Text(
                  value.toString(),
                  overflow: TextOverflow.fade,
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
