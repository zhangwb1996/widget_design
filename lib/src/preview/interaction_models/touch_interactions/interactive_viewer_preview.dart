///
/// File: \lib\src\preview\interaction_models\touch_interactions\interactive_viewer_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 6:05:47 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 6:06:06 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class InteractiveViewerPreview extends StatelessWidget {
  const InteractiveViewerPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InteractiveViewer(
        boundaryMargin: const EdgeInsets.all(20.0),
        minScale: 0.1,
        maxScale: 1.6,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: <Color>[Colors.orange, Colors.red],
              stops: <double>[0.0, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
