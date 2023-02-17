///
/// File: \lib\src\common\components\number_designer_baseline.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 1:36:09 pm
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

class NumberDesignerBaseline<T extends LayoutModel> extends StatefulWidget {
  const NumberDesignerBaseline({super.key});

  @override
  State<NumberDesignerBaseline<T>> createState() => _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends LayoutModel>
    extends State<NumberDesignerBaseline<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().baseline.toString();
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
    return ListTile(
      leading: const Text('baseline'),
      title: Consumer<T>(
        builder: (context, model, child) => TextField(
          controller: controller,
          onChanged: (text) {
            if (RegExp(r"^\d*\.?\d*$").allMatches(text, 0).isEmpty) {
              controller.text = '100.0';
            }

            model.baseline =
                double.parse(controller.text.isEmpty ? '100' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}
