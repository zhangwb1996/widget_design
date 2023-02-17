///
/// File: \lib\src\preview\animation_and_motion\animated_padding_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 5:09:06 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 5:10:35 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class AnimatedPaddingPreview extends StatefulWidget {
  const AnimatedPaddingPreview({super.key});

  @override
  State<AnimatedPaddingPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<AnimatedPaddingPreview> {
  double padValue = 0.0;
  void _updatePadding(double value) {
    setState(() {
      padValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedPadding(
          padding: EdgeInsets.all(padValue),
          duration: const Duration(seconds: 2),
          curve: Curves.easeInOut,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5,
            color: Colors.blue,
          ),
        ),
        Text('Padding: $padValue'),
        ElevatedButton(
            child: const Text('Change padding'),
            onPressed: () {
              _updatePadding(padValue == 0.0 ? 100.0 : 0.0);
            }),
      ],
    );
  }
}
