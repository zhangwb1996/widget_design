///
/// File: \lib\src\preview\animation_and_motion\animated_size\size_transition_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 1:01:13 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 1:01:41 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class SizeTransitionPreview extends StatefulWidget {
  const SizeTransitionPreview({super.key});

  @override
  State<SizeTransitionPreview> createState() => _MyStatefulWidgetState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _MyStatefulWidgetState extends State<SizeTransitionPreview>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: const Center(
          child: FlutterLogo(size: 200.0),
        ),
      ),
    );
  }
}
