///
/// File: \lib\src\preview\scrolling\nested_scroll_view\nested_scroll_view_preview3.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:09:57 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:12:17 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class NestedScrollViewPreview3 extends StatelessWidget {
  const NestedScrollViewPreview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverOverlapAbsorber(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
          sliver: SliverAppBar(
            title: const Text('Snapping Nested SliverAppBar'),
            floating: true,
            snap: true,
            expandedHeight: 200.0,
            forceElevated: innerBoxIsScrolled,
          ),
        ),
      ];
    }, body: Builder(builder: (BuildContext context) {
      return CustomScrollView(
        // The "controller" and "primary" members should be left unset, so that
        // the NestedScrollView can control this inner scroll view.
        // If the "controller" property is set, then this scroll view will not
        // be associated with the NestedScrollView.
        slivers: <Widget>[
          SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)),
          SliverFixedExtentList(
            itemExtent: 48.0,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) =>
                  ListTile(title: Text('Item $index')),
              childCount: 30,
            ),
          ),
        ],
      );
    })));
  }
}
