///
/// File: \lib\src\preview\material_components\input_selections\switch\switch_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:55:08 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:56:25 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class SwitchPreview1 extends StatefulWidget {
  const SwitchPreview1({super.key});

  @override
  State<SwitchPreview1> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchPreview1> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      // This bool value toggles the switch.
      value: light,
      activeColor: Colors.red,
      onChanged: (bool value) {
        // This is called when the user toggles the switch.
        setState(() {
          light = value;
        });
      },
    );
  }
}
