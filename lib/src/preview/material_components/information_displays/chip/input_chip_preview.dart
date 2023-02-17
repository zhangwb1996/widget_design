///
/// File: \lib\src\preview\material_components\information_displays\chip\input_chip_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:20:05 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:21:28 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class InputChipPreview extends StatefulWidget {
  const InputChipPreview({super.key});

  @override
  State<InputChipPreview> createState() => _InputChipExampleState();
}

class _InputChipExampleState extends State<InputChipPreview> {
  int inputs = 3;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InputChip Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 5.0,
              children: List<Widget>.generate(
                inputs,
                (int index) {
                  return InputChip(
                    label: Text('Person ${index + 1}'),
                    selected: selectedIndex == index,
                    onSelected: (bool selected) {
                      setState(() {
                        if (selectedIndex == index) {
                          selectedIndex = null;
                        } else {
                          selectedIndex = index;
                        }
                      });
                    },
                    onDeleted: () {
                      setState(() {
                        inputs = inputs - 1;
                      });
                    },
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  inputs = 3;
                });
              },
              child: const Text('Reset'),
            )
          ],
        ),
      ),
    );
  }
}
