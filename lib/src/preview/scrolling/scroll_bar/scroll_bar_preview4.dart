///
/// File: \lib\src\preview\scrolling\scroll_bar\scroll_bar_preview4.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:19:12 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:20:43 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class ScrollbarPreview4 extends StatefulWidget {
  const ScrollbarPreview4({super.key});

  @override
  State<ScrollbarPreview4> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ScrollbarPreview4> {
  final ScrollController _controllerOne = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: _controllerOne,
      thumbVisibility: true,
      child: GridView.builder(
        controller: _controllerOne,
        itemCount: 120,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (BuildContext context, int index) {
          return Center(
            child: Text('item $index'),
          );
        },
      ),
    );
  }
}
