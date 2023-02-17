///
/// File: \lib\src\common\components\properties\common\number_designer_height_factor.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 3:09:38 pm
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

class NumberDesignerHeightFactor<T extends BaseModel> extends StatefulWidget {
  const NumberDesignerHeightFactor({super.key});

  @override
  State<NumberDesignerHeightFactor<T>> createState() =>
      _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends BaseModel>
    extends State<NumberDesignerHeightFactor<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().heightFactor.toString();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('NumberDesignerHeightFactor.build');

    controller.selection = TextSelection.fromPosition(
      TextPosition(offset: controller.text.length),
    );

    /// Consumer
    return ListTile(
      leading: const Text('heightFactor'),
      title: Consumer<T>(
        builder: (context, model, child) => TextField(
          controller: controller,
          onChanged: (text) {
            if (RegExp(r"^\d*\.?\d*$").allMatches(text, 0).isEmpty) {
              controller.text = '1.0';
            }

            model.heightFactor =
                double.parse(controller.text.isEmpty ? '1' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}
