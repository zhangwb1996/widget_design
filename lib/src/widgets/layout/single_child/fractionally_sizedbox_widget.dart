///
/// File: \lib\src\widgets\layout\single_child\fractionally_sizedbox_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 2:16:01 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:36:09 pm
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

import 'package:widget_design/src/models/widgets/layout/widget.dart';

class FractionallySizedBoxWidget extends StatelessWidget {
  const FractionallySizedBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<FractionallySizedBoxModel>(
      builder: (context, model, child) {
        return SizedBox.expand(
          child: FractionallySizedBox(
            widthFactor: model.widthFactor,
            heightFactor: model.heightFactor,
            alignment: model.fractionalOffset,
            child: DecoratedBox(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 4,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
