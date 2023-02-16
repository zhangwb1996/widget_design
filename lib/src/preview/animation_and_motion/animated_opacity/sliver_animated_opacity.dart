///
/// File: \lib\src\preview\animation_and_motion\animated_opacity\sliver_animated_opacity.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 12:14:51 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 12:40:29 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class SliverAnimatedOpacityPreview extends StatefulWidget {
  const SliverAnimatedOpacityPreview({super.key});

  @override
  State<SliverAnimatedOpacityPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<SliverAnimatedOpacityPreview>
    with SingleTickerProviderStateMixin {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SliverAnimatedOpacityPreview')),
      body: CustomScrollView(slivers: <Widget>[
        SliverAnimatedOpacity(
          opacity: _visible ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 500),
          sliver: SliverFixedExtentList(
            itemExtent: 100.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isEven ? Colors.indigo[200] : Colors.orange[200],
                );
              },
              childCount: 5,
            ),
          ),
        ),
        SliverToBoxAdapter(
            child: FloatingActionButton(
          onPressed: () {
            setState(() {
              _visible = !_visible;
            });
          },
          tooltip: 'Toggle opacity',
          child: const Icon(Icons.flip),
        )),
      ]),
    );
  }
}
