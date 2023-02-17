///
/// File: \lib\src\widgets\layout\single_child\baseline_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:02:49 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 1:29:21 pm
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
import 'package:widget_design/src/models/widgets/layout/single_child/widget.dart';

class BaselineTextWidget extends StatelessWidget {
  const BaselineTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Consumer<BaselineModel>(
        builder: (context, model, child) => Container(
          width: 100,
          height: 100,
          color: Colors.blue,
          child: Baseline(
            baseline: model.baseline,
            baselineType: model.baselineType,
            child: const Text("baseline"),
          ),
          // child: const Text("baseline"),
        ),
      ),
    );
  }
}
