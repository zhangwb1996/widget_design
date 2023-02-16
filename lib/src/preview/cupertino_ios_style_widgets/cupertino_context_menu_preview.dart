///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_context_menu_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 4:29:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 4:30:28 pm
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

class CupertinoContextMenuPreview extends StatelessWidget {
  const CupertinoContextMenuPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: ContextMenuExample(),
    );
  }
}

class ContextMenuExample extends StatelessWidget {
  const ContextMenuExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoContextMenu Sample'),
      ),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDefaultAction: true,
                trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                child: const Text('Copy'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.share,
                child: const Text('Share'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                trailingIcon: CupertinoIcons.heart,
                child: const Text('Favorite'),
              ),
              CupertinoContextMenuAction(
                onPressed: () {
                  Navigator.pop(context);
                },
                isDestructiveAction: true,
                trailingIcon: CupertinoIcons.delete,
                child: const Text('Delete'),
              ),
            ],
            child: Container(
              color: CupertinoColors.systemYellow,
              child: const FlutterLogo(size: 500.0),
            ),
          ),
        ),
      ),
    );
  }
}
