///
/// File: \lib\src\preview\scrolling\scroll_bar\scroll_bar_preview2.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:19:12 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:20:09 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class ScrollbarPreview2 extends StatefulWidget {
  const ScrollbarPreview2({super.key});

  @override
  State<ScrollbarPreview2> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<ScrollbarPreview2> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth / 2,
              // When running this sample on desktop, two scrollbars will be
              // visible here. One is the default scrollbar and the other is the
              // Scrollbar widget with custom thickness.
              child: Scrollbar(
                thickness: 20.0,
                thumbVisibility: true,
                controller: controller,
                child: ListView.builder(
                  controller: controller,
                  itemCount: 100,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 50,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Scrollable 1 : Index $index'),
                      ),
                    );
                  },
                ),
              )),
          SizedBox(
              width: constraints.maxWidth / 2,
              // When running this sample on desktop, one scrollbar will be
              // visible here. The default scrollbar is hidden by setting the
              // ScrollConfiguration's scrollbars to false. The Scrollbar widget
              // with custom thickness is visible.
              child: Scrollbar(
                thickness: 20.0,
                thumbVisibility: true,
                child: ScrollConfiguration(
                  behavior: ScrollConfiguration.of(context)
                      .copyWith(scrollbars: false),
                  child: ListView.builder(
                    primary: true,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return SizedBox(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Scrollable 2 : Index $index'),
                        ),
                      );
                    },
                  ),
                ),
              )),
        ],
      );
    });
  }
}
