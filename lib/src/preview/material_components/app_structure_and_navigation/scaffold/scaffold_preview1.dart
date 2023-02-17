///
/// File: \lib\src\preview\material_components\app_structure_and_navigation\scaffold\scaffold_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:18:11 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:19:13 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class ScaffoldPreview1 extends StatefulWidget {
  const ScaffoldPreview1({super.key});

  @override
  State<ScaffoldPreview1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ScaffoldPreview1> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Code'),
      ),
      body: Center(child: Text('You have pressed the button $_count times.')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() => _count++),
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
    );
  }
}
