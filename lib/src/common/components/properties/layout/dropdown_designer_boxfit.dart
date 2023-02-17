///
/// File: \lib\src\common\components\properties\layout\dropdown_designer_boxfit.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:13:55 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 3:58:00 pm
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
import 'package:widget_design/src/models/properties/default/boxfit_list.dart';

import 'package:widget_design/src/models/widgets/layout/base/layout_model.dart';

class DropdownDesignerBoxfit<T extends LayoutModel> extends StatelessWidget {
  const DropdownDesignerBoxfit({
    super.key,
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
            value: context.select((T a) => a.boxfit),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (value) {
              model.boxfit = value;
              model.setCode();
            },
            items: BoxFitList.boxFitList.map<DropdownMenuItem<BoxFit>>((value) {
              return DropdownMenuItem<BoxFit>(
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
