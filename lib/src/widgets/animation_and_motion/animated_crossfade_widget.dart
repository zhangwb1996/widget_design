///
/// File: \lib\src\widgets\animation_and_motion\animated_crossfade_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 5:53:40 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 6:14:24 pm
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
import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';

class AnimatedCrossFadeWidget extends StatelessWidget {
  const AnimatedCrossFadeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<AnimatedCrossFadeModel>(
      builder: (context, anims, child) {
        return GestureDetector(
          onTap: () {
            anims.setSelected();
          },
          child: Center(
            child: AnimatedCrossFade(
              duration: Duration(seconds: anims.duration),
              firstChild: const FlutterLogo(
                  style: FlutterLogoStyle.horizontal, size: 100.0),
              secondChild: const FlutterLogo(
                  style: FlutterLogoStyle.stacked, size: 100.0),
              crossFadeState: anims.selected
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
            ),
          ),
        );
      },
    );
  }
}
