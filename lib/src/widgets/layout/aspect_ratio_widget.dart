///
/// File: \lib\src\widgets\layout\aspect_ratio_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 12:26:19 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 9:49:13 am
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
import 'package:widget_design/src/models/widgets/layout/aspect_ratio_model.dart';

class AspectRatioWidget extends StatelessWidget {
  const AspectRatioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AspectRatioModel>(
      builder: (context, model, child) => Center(
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          width: 100.0,
          height: 100.0,
          child: AspectRatio(
            aspectRatio: model.aspectRatio,
            child: Container(
              width: model.height * model.aspectRatio,
              height: model.height,
              color: Colors.green,
            ),
          ),
        ),
      ),
    );
  }
}
