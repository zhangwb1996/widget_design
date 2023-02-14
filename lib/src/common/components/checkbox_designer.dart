///
/// File: \lib\src\common\components\checkbox_designer.dart
/// Project: widget_design
/// -----
/// Created Date: Monday, 2023-02-13 6:10:00 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 10:27:22 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class CheckboxDesigner extends StatefulWidget {
  bool isChecked = false;

  CheckboxDesigner({super.key});

  @override
  State<CheckboxDesigner> createState() => _CheckboxDesignerState();
}

class _CheckboxDesignerState extends State<CheckboxDesigner> {
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: widget.isChecked,
      onChanged: (bool? value) {
        setState(() {
          widget.isChecked = value!;
        });
      },
    );
  }
}
