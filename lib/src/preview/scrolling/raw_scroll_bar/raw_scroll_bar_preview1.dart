///
/// File: \lib\src\preview\scrolling\raw_scroll_bar\raw_scroll_bar_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-02-18 12:21:37 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-02-18 12:52:47 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class RawScrollbarPreview1 extends StatelessWidget {
  const RawScrollbarPreview1({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const Center(
          child: MyRawScrollbarPreview1(),
        ),
      ),
    );
  }
}

class MyRawScrollbarPreview1 extends StatefulWidget {
  const MyRawScrollbarPreview1({super.key});

  @override
  State<MyRawScrollbarPreview1> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyRawScrollbarPreview1> {
  final ScrollController _firstController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: constraints.maxWidth / 2,
              // When using the PrimaryScrollController and a Scrollbar
              // together, only one ScrollPosition can be attached to the
              // PrimaryScrollController at a time. Providing a
              // unique scroll controller to this scroll view prevents it
              // from attaching to the PrimaryScrollController.
              child: Scrollbar(
                thumbVisibility: true,
                controller: _firstController,
                child: ListView.builder(
                    controller: _firstController,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Scrollable 1 : Index $index'),
                      );
                    }),
              )),
          SizedBox(
              width: constraints.maxWidth / 2,
              // This vertical scroll view has primary set to true, so it is
              // using the PrimaryScrollController. On mobile platforms, the
              // PrimaryScrollController automatically attaches to vertical
              // ScrollViews, unlike on Desktop platforms, where the primary
              // parameter is required.
              child: Scrollbar(
                thumbVisibility: true,
                child: ListView.builder(
                    primary: true,
                    itemCount: 100,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          height: 50,
                          color: index.isEven
                              ? Colors.amberAccent
                              : Colors.blueAccent,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Scrollable 2 : Index $index'),
                          ));
                    }),
              )),
        ],
      );
    });
  }
}
