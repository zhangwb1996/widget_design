///
/// File: \lib\src\preview\layout\multi_child\layout_builder_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 5:37:50 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 5:39:15 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class LayoutBuilderPreview extends StatelessWidget {
  const LayoutBuilderPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
              'LayoutBuilder Example (Resize window) to see LayoutBuilder in action!')),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 600) {
            return _buildWideContainers();
          } else {
            return _buildNormalContainer();
          }
        },
      ),
    );
  }

  Widget _buildNormalContainer() {
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.red,
      ),
    );
  }

  Widget _buildWideContainers() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.red,
          ),
          Container(
            height: 100.0,
            width: 100.0,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
