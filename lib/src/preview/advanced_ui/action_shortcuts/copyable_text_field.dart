///
/// File: \lib\src\preview\advanced_ui\action_shortcuts\copyable_text_field.dart
/// Project: widget_design
/// -----
/// Created Date: Saturday, 2023-03-25 12:22:11 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Saturday, 2023-03-25 12:26:01 am
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

/// A text field that also has buttons to select all the text and copy the
/// selected text to the clipboard.
class CopyableTextField extends StatefulWidget {
  const CopyableTextField({super.key});

  // final String title;

  @override
  State<CopyableTextField> createState() => _CopyableTextFieldState();
}

class _CopyableTextFieldState extends State<CopyableTextField> {
  late TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Actions(
      dispatcher: LoggingActionDispatcher(),
      actions: <Type, Action<Intent>>{
        ClearIntent: ClearAction(controller),
        CopyIntent: CopyAction(controller),
        SelectAllIntent: SelectAllAction(controller),
      },
      child: Builder(builder: (context) {
        return Scaffold(
          body: Center(
            child: Row(
              children: <Widget>[
                const Spacer(),
                Expanded(
                  child: TextField(controller: controller),
                ),
                IconButton(
                  icon: const Icon(Icons.copy),
                  onPressed:
                      Actions.handler<CopyIntent>(context, const CopyIntent()),
                ),
                IconButton(
                  icon: const Icon(Icons.select_all),
                  onPressed: Actions.handler<SelectAllIntent>(
                      context, const SelectAllIntent()),
                ),
                const Spacer(),
              ],
            ),
          ),
        );
      }),
    );
  }
}

/// A ShortcutManager that logs all keys that it handles.
class LoggingShortcutManager extends ShortcutManager {
  @override
  KeyEventResult handleKeypress(BuildContext context, RawKeyEvent event) {
    final KeyEventResult result = super.handleKeypress(context, event);
    if (result == KeyEventResult.handled) {
      print('Handled shortcut $event in $context');
    }
    return result;
  }
}

/// An ActionDispatcher that logs all the actions that it invokes.
class LoggingActionDispatcher extends ActionDispatcher {
  @override
  Object? invokeAction(
    covariant Action<Intent> action,
    covariant Intent intent, [
    BuildContext? context,
  ]) {
    print('Action invoked: $action($intent) from $context');
    super.invokeAction(action, intent, context);

    return null;
  }
}

/// An intent that is bound to ClearAction in order to clear its
/// TextEditingController.
class ClearIntent extends Intent {
  const ClearIntent();
}

/// An action that is bound to ClearIntent that clears its
/// TextEditingController.
class ClearAction extends Action<ClearIntent> {
  ClearAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant ClearIntent intent) {
    controller.clear();

    return null;
  }
}

/// An intent that is bound to CopyAction to copy from its
/// TextEditingController.
class CopyIntent extends Intent {
  const CopyIntent();
}

/// An action that is bound to CopyIntent that copies the text in its
/// TextEditingController to the clipboard.
class CopyAction extends Action<CopyIntent> {
  CopyAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant CopyIntent intent) {
    final String selectedString = controller.text.substring(
      controller.selection.baseOffset,
      controller.selection.extentOffset,
    );
    Clipboard.setData(ClipboardData(text: selectedString));

    return null;
  }
}

/// An intent that is bound to SelectAllAction to select all the text in its
/// controller.
class SelectAllIntent extends Intent {
  const SelectAllIntent();
}

/// An action that is bound to SelectAllAction that selects all text in its
/// TextEditingController.
class SelectAllAction extends Action<SelectAllIntent> {
  SelectAllAction(this.controller);

  final TextEditingController controller;

  @override
  Object? invoke(covariant SelectAllIntent intent) {
    controller.selection = controller.selection.copyWith(
      baseOffset: 0,
      extentOffset: controller.text.length,
      affinity: controller.selection.affinity,
    );

    return null;
  }
}

/// The top level application class.
///
/// Shortcuts defined here are in effect for the whole app,
/// although different widgets may fulfill them differently.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String title = 'Shortcuts and Actions Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Shortcuts(
        shortcuts: <LogicalKeySet, Intent>{
          LogicalKeySet(LogicalKeyboardKey.escape): const ClearIntent(),
          LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyC):
              const CopyIntent(),
          LogicalKeySet(LogicalKeyboardKey.control, LogicalKeyboardKey.keyA):
              const SelectAllIntent(),
        },
        child: const CopyableTextField(),
      ),
    );
  }
}

void main() => runApp(const MyApp());
