///
/// File: \lib\src\preview\cupertino_ios_style_widgets\cupertino_list_section_preview.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 5:00:29 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 5:00:54 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/cupertino.dart';

class CupertinoListSectionPreview extends StatelessWidget {
  const CupertinoListSectionPreview({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: _title,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoListSection(
        header: const Text('My Reminders'),
        children: <CupertinoListTile>[
          CupertinoListTile(
            title: const Text('Open pull request'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeGreen,
            ),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Open pull request');
                },
              ),
            ),
          ),
          CupertinoListTile(
            title: const Text('Push to master'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.systemRed,
            ),
            additionalInfo: const Text('Not available'),
          ),
          CupertinoListTile(
            title: const Text('View last commit'),
            leading: Container(
              width: double.infinity,
              height: double.infinity,
              color: CupertinoColors.activeOrange,
            ),
            additionalInfo: const Text('12 days ago'),
            trailing: const CupertinoListTileChevron(),
            onTap: () => Navigator.of(context).push(
              CupertinoPageRoute<void>(
                builder: (BuildContext context) {
                  return const _SecondPage(text: 'Last commit');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SecondPage extends StatelessWidget {
  const _SecondPage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
