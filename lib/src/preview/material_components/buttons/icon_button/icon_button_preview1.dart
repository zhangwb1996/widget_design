///
/// File: \lib\src\preview\material_components\buttons\icon_button\icon_button_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:34:11 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:35:17 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

double _volume = 0.0;

class IconButtonPreview1 extends StatefulWidget {
  const IconButtonPreview1({super.key});

  @override
  State<IconButtonPreview1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<IconButtonPreview1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.volume_up),
          tooltip: 'Increase volume by 10',
          onPressed: () {
            setState(() {
              _volume += 10;
            });
          },
        ),
        Text('Volume : $_volume'),
      ],
    );
  }
}
