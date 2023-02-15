///
/// File: \lib\src\widgets\animation_and_motion\animate_container_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 1:57:52 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 2:43:34 pm
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

class AnimatedContainerWidget extends StatelessWidget {
  const AnimatedContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container();
    return Consumer<AnimatedContainerModel>(
      builder: (context, anims, child) {
        return GestureDetector(
          onTap: () {
            anims.setSelected();
          },
          child: Center(
            child: AnimatedContainer(
              width: anims.selected ? 200.0 : 100.0,
              height: anims.selected ? 100.0 : 200.0,
              color: anims.selected ? Colors.red : Colors.blue,
              alignment: anims.selected ? Alignment.center : anims.alignment,
              duration: Duration(seconds: anims.duration),
              curve: anims.curve,
              child: const FlutterLogo(size: 75),
            ),
          ),
        );
      },
    );
  }
}
