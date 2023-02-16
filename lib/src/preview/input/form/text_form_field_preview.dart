///
/// File: \lib\src\preview\input\form\text_form_field_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 5:23:45 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 5:25:29 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFormFieldPreview extends StatefulWidget {
  const TextFormFieldPreview({super.key});

  @override
  State<TextFormFieldPreview> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<TextFormFieldPreview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'What do people call you?',
            labelText: 'Name *',
          ),
          onSaved: (String? value) {
            // This optional block of code can be used to run
            // code when the user saves the form.
          },
          validator: (String? value) {
            return (value != null && value.contains('@'))
                ? 'Do not use the @ char.'
                : null;
          },
        ),
        Material(
          child: Center(
            child: Shortcuts(
              shortcuts: const <ShortcutActivator, Intent>{
                // Pressing space in the field will now move to the next field.
                SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
              },
              child: FocusTraversalGroup(
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  onChanged: () {
                    Form.of(primaryFocus!.context!).save();
                  },
                  child: Wrap(
                    children: List<Widget>.generate(5, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tight(const Size(200, 50)),
                          child: TextFormField(
                            onSaved: (String? value) {
                              debugPrint(
                                  'Value for field $index saved as "$value"');
                            },
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
