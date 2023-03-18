///
/// File: \lib\src\preview\toolbar\context_menu_builder2.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-03-18 10:40:04 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-03-18 10:48:35 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

void main() => runApp(const ContextMenuBuilder2());

const String emailAddress = 'me@example.com';
const String text = 'Select the email address and open the menu: $emailAddress';

class ContextMenuBuilder2 extends StatelessWidget {
  const ContextMenuBuilder2({super.key});

  void _showDialog(BuildContext context) {
    Navigator.of(context).push(
      DialogRoute<void>(
        context: context,
        builder: (BuildContext context) =>
            const AlertDialog(title: Text('You clicked send email!')),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController(
      text: text,
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom button for emails'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(height: 20.0),
              TextField(
                controller: _controller,
                contextMenuBuilder: (BuildContext context,
                    EditableTextState editableTextState) {
                  final List<ContextMenuButtonItem> buttonItems =
                      editableTextState.contextMenuButtonItems;
                  // Here we add an "Email" button to the default TextField
                  // context menu for the current platform, but only if an email
                  // address is currently selected.
                  final TextEditingValue value = _controller.value;
                  if (_isValidEmail(value.selection.textInside(value.text))) {
                    buttonItems.insert(
                        0,
                        ContextMenuButtonItem(
                          label: 'Send email',
                          onPressed: () {
                            ContextMenuController.removeAny();
                            _showDialog(context);
                          },
                        ));
                  }
                  return AdaptiveTextSelectionToolbar.buttonItems(
                    anchors: editableTextState.contextMenuAnchors,
                    buttonItems: buttonItems,
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

bool _isValidEmail(String text) {
  return RegExp(
    r'(?<name>[a-zA-Z0-9]+)'
    r'@'
    r'(?<domain>[a-zA-Z0-9]+)'
    r'\.'
    r'(?<topLevelDomain>[a-zA-Z0-9]+)',
  ).hasMatch(text);
}
