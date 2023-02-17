///
/// File: \lib\src\preview\material_components\input_selections\slider\slider_preview2.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:52:17 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:53:36 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class SliderPreview2 extends StatefulWidget {
  const SliderPreview2({super.key});

  @override
  State<SliderPreview2> createState() => _SliderExampleState();
}

class _SliderExampleState extends State<SliderPreview2> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
