///
/// File: \lib\src\widgets\animation_and_motion\animated_align.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:01:08 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:25:47 pm
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

class AnimatedAlignWidget extends StatelessWidget {
  const AnimatedAlignWidget({super.key});
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    var animationProperties = context.watch<AnimatedAlignModel>();
    return GestureDetector(
      onTap: () {
        animationProperties.setSelected();
      },
      child: Center(
        child: Container(
          width: 250.0,
          height: 250.0,
          color: Colors.red,
          child: Consumer<AnimatedAlignModel>(
            builder: (context, animationProperties, child) {
              return AnimatedAlign(
                alignment: animationProperties.selected
                    ? Alignment.topRight
                    : animationProperties.alignment,
                duration: Duration(seconds: animationProperties.duration),
                curve: animationProperties.curve,
                // curve: Curves.linear,
                child: const FlutterLogo(size: 50.0),
              );
            },
          ),
        ),
      ),
    );
  }
}
