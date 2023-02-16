///
/// File: \lib\src\common\components\number_designer_width.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 11:28:59 pm
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

class NumberDesignerWidth<T extends BaseModel> extends StatefulWidget {
  const NumberDesignerWidth({super.key});

  @override
  State<NumberDesignerWidth<T>> createState() => _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends BaseModel>
    extends State<NumberDesignerWidth<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().width.toString();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('NumberDesigner.build');

    // controller.selection =
    //     TextSelection.collapsed(offset: controller.text.length);
    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );

    /// Consumer
    return ListTile(
      leading: const Text('width'),
      title: Consumer<T>(
        builder: (context, model, child) => TextField(
          controller: controller,
          onChanged: (text) {
            if (RegExp(r"^\d*\.?\d*$").allMatches(text, 0).isEmpty) {
              controller.text = '120.0';
            }
            model.width =
                double.parse(controller.text.isEmpty ? '120' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}
