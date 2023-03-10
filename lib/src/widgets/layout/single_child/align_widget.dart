///
/// File: \lib\src\widgets\layout\single_child\align_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:10:10 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:25:58 pm
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
import 'package:widget_design/src/models/widgets/layout/single_child/align_model.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<AlignModel>(
      builder: (context, model, child) {
        return Center(
          child: Container(
            height: model.height,
            width: model.width,
            color: Colors.blue[50],
            child: Align(
              alignment: model.alignment,
              child: const FlutterLogo(
                size: 60,
              ),
            ),
          ),
        );
      },
    );
  }
}
