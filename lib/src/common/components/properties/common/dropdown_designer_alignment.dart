///
/// File: \lib\src\common\components\dropdown_designer_alignment.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:55 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:23:37 pm
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

class DropdownDesignerAlignment<T extends BaseModel> extends StatelessWidget {
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
    return ListTile(
      leading: const Text('alignment'),
      title: Consumer<T>(
        builder: (context, model, child) {
          return DropdownButton<dynamic>(
            value: context.select((T a) => a.alignment),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              model.alignment = value;
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
