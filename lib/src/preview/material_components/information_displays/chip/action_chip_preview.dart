///
/// File: \lib\src\preview\material_components\information_displays\chip\action_chip_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:22:49 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:26:54 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class ActionChipPreview extends StatefulWidget {
  const ActionChipPreview({super.key});

  @override
  State<ActionChipPreview> createState() => _ActionChipExampleState();
}

class _ActionChipExampleState extends State<ActionChipPreview> {
  bool favorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ActionChip Sample'),
      ),
      body: Center(
        child: ActionChip(
          avatar: Icon(favorite ? Icons.favorite : Icons.favorite_border),
          label: const Text('Save to favorites'),
          onPressed: () {
            setState(() {
              favorite = !favorite;
            });
          },
        ),
      ),
    );
  }
}
