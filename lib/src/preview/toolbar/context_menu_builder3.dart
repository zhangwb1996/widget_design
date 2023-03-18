///
/// File: \lib\src\preview\toolbar\context_menu_builder3.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-03-18 10:40:04 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-03-18 10:43:31 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

void main() => runApp(const ContextMenuBuilder3());

const String text =
    'I am some text inside of SelectionArea. Right click or long press me to show the customized context menu.';

class ContextMenuBuilder3 extends StatelessWidget {
  const ContextMenuBuilder3({super.key});

  void _showDialog(BuildContext context) {
    Navigator.of(context).push(
      DialogRoute<void>(
        context: context,
        builder: (BuildContext context) =>
            const AlertDialog(title: Text('You clicked print!')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Context menu anywhere'),
        ),
        body: Center(
          child: SizedBox(
            width: 200.0,
            child: SelectionArea(
              contextMenuBuilder: (
                BuildContext context,
                SelectableRegionState selectableRegionState,
              ) {
                return AdaptiveTextSelectionToolbar.buttonItems(
                  anchors: selectableRegionState.contextMenuAnchors,
                  buttonItems: <ContextMenuButtonItem>[
                    ...selectableRegionState.contextMenuButtonItems,
                    ContextMenuButtonItem(
                      onPressed: () {
                        ContextMenuController.removeAny();
                        _showDialog(context);
                      },
                      label: 'Print',
                    ),
                  ],
                );
              },
              child: ListView(
                children: const <Widget>[
                  SizedBox(height: 20.0),
                  Text(text),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
