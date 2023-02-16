///
/// File: \lib\src\preview\animation_and_motion\animated_positioned\relative_position_transition_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 1:11:01 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 1:11:24 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class RelativePositionedTransitionPreview extends StatefulWidget {
  const RelativePositionedTransitionPreview({super.key});

  @override
  State<RelativePositionedTransitionPreview> createState() =>
      _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<RelativePositionedTransitionPreview>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double smallLogo = 100;
    const double bigLogo = 200;

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final Size biggest = constraints.biggest;
        return Stack(
          children: <Widget>[
            RelativePositionedTransition(
              size: biggest,
              rect: RectTween(
                begin: const Rect.fromLTWH(0, 0, bigLogo, bigLogo),
                end: Rect.fromLTWH(biggest.width - smallLogo,
                    biggest.height - smallLogo, smallLogo, smallLogo),
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.elasticInOut,
              )),
              child: const Padding(
                  padding: EdgeInsets.all(8), child: FlutterLogo()),
            ),
          ],
        );
      },
    );
  }
}
