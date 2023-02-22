///
/// File: \lib\src\common\components\properties\common\number_designer_height.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Monday, 2023-02-20 11:41:14 pm
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

class NumberDesignerHeight<T extends BaseModel> extends StatefulWidget {
  const NumberDesignerHeight({super.key});

  @override
  State<NumberDesignerHeight<T>> createState() => _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends BaseModel>
    extends State<NumberDesignerHeight<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().height.toString();
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

    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );

    /// Consumer
    // [ ]TODO: support [double.infinity] ,etc
    return ListTile(
      leading: const Text('height'),
      title: Consumer<T>(
        builder: (context, model, child) => TextField(
          controller: controller,
          onChanged: (text) {
            if (RegExp(r"^\d*\.?\d*$").allMatches(text, 0).isEmpty) {
              controller.text = '120.0';
            }

            model.height =
                double.parse(controller.text.isEmpty ? '120' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}
