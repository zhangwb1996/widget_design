///
/// File: \lib\src\common\components\properties\common\dropdown_designer_fractional_offset.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 5:09:55 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:57:31 pm
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
import 'package:widget_design/src/models/properties/default/fractional_offset_map.dart';

import 'package:widget_design/src/models/widgets/base_model.dart';

class DropdownDesignerFractionalOffset<T extends BaseModel>
    extends StatelessWidget {
  const DropdownDesignerFractionalOffset({
    super.key,
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
            isExpanded: true,
            value: context.select((T a) => a.fractionalOffset),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              model.fractionalOffset = value;
              model.setCode();
            },
            items: FractionalOffsetMap.fractionalOffset.values
                .map<DropdownMenuItem<dynamic>>((value) {
              return DropdownMenuItem<dynamic>(
                value: value,
                child: Text(
                  FractionalOffsetMap.fractionalOffset.keys.firstWhere(
                    (k) => FractionalOffsetMap.fractionalOffset[k] == value,
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
