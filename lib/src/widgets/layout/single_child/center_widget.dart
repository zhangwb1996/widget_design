///
/// File: \lib\src\widgets\layout\single_child\center_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 2:16:01 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:29:44 pm
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
import 'package:widget_design/src/models/widgets/layout/single_child/center_model.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Center(
      child: Container(
        color: Colors.blue,
        child: Consumer<CenterModel>(
          builder: (context, model, child) {
            return Center(
              widthFactor: model.widthFactor,
              heightFactor: model.heightFactor,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
            );
          },
        ),
      ),
    );
  }
}
