///
/// File: \lib\src\preview\interaction_models\touch_interactions\draggable\draggable_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 5:48:35 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 5:48:53 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class DraggablePreview extends StatelessWidget {
  const DraggablePreview({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int acceptedData = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Draggable<int>(
          // Data is the value this Draggable stores.
          data: 10,
          feedback: Container(
            color: Colors.deepOrange,
            height: 100,
            width: 100,
            child: const Icon(Icons.directions_run),
          ),
          childWhenDragging: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.pinkAccent,
            child: const Center(
              child: Text('Child When Dragging'),
            ),
          ),
          child: Container(
            height: 100.0,
            width: 100.0,
            color: Colors.lightGreenAccent,
            child: const Center(
              child: Text('Draggable'),
            ),
          ),
        ),
        DragTarget<int>(
          builder: (
            BuildContext context,
            List<dynamic> accepted,
            List<dynamic> rejected,
          ) {
            return Container(
              height: 100.0,
              width: 100.0,
              color: Colors.cyan,
              child: Center(
                child: Text('Value is updated to: $acceptedData'),
              ),
            );
          },
          onAccept: (int data) {
            setState(() {
              acceptedData += data;
            });
          },
        ),
      ],
    );
  }
}
