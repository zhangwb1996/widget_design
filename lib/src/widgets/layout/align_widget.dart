///
/// File: \lib\src\widgets\layout\align_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:10:10 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 9:22:48 pm
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
import 'package:widget_design/src/models/widgets/layout/align_model.dart';

class AlignWidget extends StatelessWidget {
  const AlignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<AlignModel>(
      builder: (context, layout, child) {
        return Center(
          child: Container(
            height: layout.height,
            width: layout.width,
            color: Colors.blue[50],
            child: Align(
              alignment: layout.alignment,
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
