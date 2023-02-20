///
/// File: \lib\src\preview\material_components\information_displays\layout\divider_preview2.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:46:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Monday, 2023-02-20 9:05:35 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class DividerPreview2 extends StatelessWidget {
  const DividerPreview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: const <Widget>[
            Expanded(
              child: Card(
                child: SizedBox.expand(),
              ),
            ),
            Divider(),
            Expanded(
              child: Card(
                child: SizedBox.expand(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
