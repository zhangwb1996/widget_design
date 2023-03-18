///
/// File: \lib\src\preview\toolbar\context_menu_builder1.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-03-18 10:40:04 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-03-18 10:48:15 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const ContextMenuBuilder1());

class ContextMenuBuilder1 extends StatelessWidget {
  const ContextMenuBuilder1({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController(
      text: 'Right click or long press to see the menu with custom buttons.',
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom button appearance'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 20.0),
              TextField(
                controller: _controller,
                contextMenuBuilder: (BuildContext context,
                    EditableTextState editableTextState) {
                  return AdaptiveTextSelectionToolbar(
                    anchors: editableTextState.contextMenuAnchors,
                    // Build the default buttons, but make them look custom.
                    // In a real project you may want to build different
                    // buttons depending on the platform.
                    children: editableTextState.contextMenuButtonItems
                        .map((ContextMenuButtonItem buttonItem) {
                      return CupertinoButton(
                        borderRadius: null,
                        color: const Color(0xffaaaa00),
                        disabledColor: const Color(0xffaaaaff),
                        onPressed: buttonItem.onPressed,
                        padding: const EdgeInsets.all(10.0),
                        pressedOpacity: 0.7,
                        child: SizedBox(
                          width: 200.0,
                          child: Text(
                            CupertinoTextSelectionToolbarButton.getButtonLabel(
                                context, buttonItem),
                          ),
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
