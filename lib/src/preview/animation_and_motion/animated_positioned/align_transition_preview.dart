///
/// File: \lib\src\preview\animation_and_motion\animated_positioned\align_transition_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 1:09:24 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 1:09:49 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class AlignTransitionPreview extends StatefulWidget {
  const AlignTransitionPreview({super.key});

  @override
  State<AlignTransitionPreview> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<AlignTransitionPreview>
    with TickerProviderStateMixin {
  // Using `late final` for lazy initialization. See
  // https://dart.dev/null-safety/understanding-null-safety#lazy-initialization.
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: AlignTransition(
        alignment: _animation,
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: FlutterLogo(size: 150.0),
        ),
      ),
    );
  }
}
