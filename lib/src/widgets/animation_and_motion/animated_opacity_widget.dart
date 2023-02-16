///
/// File: \lib\src\widgets\animation_and_motion\animated_opacity_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 5:53:40 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:08:14 am
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

class AnimatedOpacityWidget extends StatelessWidget {
  const AnimatedOpacityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<AnimatedOpacityModel>(
      builder: (context, anims, child) {
        return GestureDetector(
          onTap: () {
            anims.setSelected();
          },
          child: Center(
            child: AnimatedOpacity(
              opacity: anims.selected ? 0 : anims.opacityLevel,
              duration: Duration(seconds: anims.duration),
              child: const FlutterLogo(),
            ),
          ),
        );
      },
    );
  }
}
