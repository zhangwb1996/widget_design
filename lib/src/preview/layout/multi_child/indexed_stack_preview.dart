///
/// File: \lib\src\preview\layout\multi_child\indexed_stack_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 5:36:16 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 5:36:45 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class IndexedStackPreview extends StatefulWidget {
  const IndexedStackPreview({super.key});

  @override
  State<IndexedStackPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<IndexedStackPreview> {
  List<String> names = <String>['Dash', 'John', 'Mary'];
  int index = 0;
  final TextEditingController fieldText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 300,
          child: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter the name for a person to track',
            ),
            onSubmitted: (String value) {
              setState(() {
                names.add(value);
              });
              fieldText.clear();
            },
            controller: fieldText,
          ),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                setState(() {
                  if (index == 0) {
                    index = names.length - 1;
                  } else {
                    index -= 1;
                  }
                });
              },
              child: const Icon(Icons.chevron_left, key: Key('gesture1')),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IndexedStack(
                  index: index,
                  children: <Widget>[
                    for (String name in names) PersonTracker(name: name)
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (index == names.length - 1) {
                    index = 0;
                  } else {
                    index += 1;
                  }
                });
              },
              child: const Icon(Icons.chevron_right, key: Key('gesture2')),
            ),
          ],
        )
      ],
    );
  }
}

class PersonTracker extends StatefulWidget {
  const PersonTracker({super.key, required this.name});
  final String name;
  @override
  State<PersonTracker> createState() => _PersonTrackerState();
}

class _PersonTrackerState extends State<PersonTracker> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: Key(widget.name),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 239, 248, 255),
        border: Border.all(color: const Color.fromARGB(255, 54, 60, 244)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text('Name: ${widget.name}'),
          Text('Score: $counter'),
          TextButton.icon(
            key: Key('increment${widget.name}'),
            icon: const Icon(Icons.add),
            onPressed: () {
              setState(() {
                counter += 1;
              });
            },
            label: const Text('Increment'),
          )
        ],
      ),
    );
  }
}
