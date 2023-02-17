///
/// File: \lib\src\common\components\properties\common\number_designer_width_factor.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:22:14 pm
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

class NumberDesignerWidthFactor<T extends BaseModel> extends StatefulWidget {
  const NumberDesignerWidthFactor({super.key});

  @override
  State<NumberDesignerWidthFactor<T>> createState() =>
      _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends BaseModel>
    extends State<NumberDesignerWidthFactor<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().widthFactor.toString();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('NumberDesignerWidthFactor.build');

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
              controller.text = '1.0';
            }
            model.widthFactor =
                double.parse(controller.text.isEmpty ? '1' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}
