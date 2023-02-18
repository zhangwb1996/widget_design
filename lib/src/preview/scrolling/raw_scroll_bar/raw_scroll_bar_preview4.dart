///
/// File: \lib\src\preview\scrolling\scroll_bar\raw_scroll_bar\raw_scroll_bar_preview4.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:21:37 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:23:30 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class RawScrollbarPreview4 extends StatefulWidget {
  const RawScrollbarPreview4({super.key});

  @override
  State<RawScrollbarPreview4> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<RawScrollbarPreview4> {
  final ScrollController _controllerOne = ScrollController();
  @override
  void dispose() {
    _controllerOne.dispose();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return RawScrollbar(
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
