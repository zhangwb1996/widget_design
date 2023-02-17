///
/// File: \lib\src\preview\material_components\information_displays\progress_indicator\refresh_indicator_preview2.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:29:26 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:30:12 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class RefreshIndicatorPreview2 extends StatelessWidget {
  const RefreshIndicatorPreview2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RefreshIndicator Sample'),
      ),
      body: RefreshIndicator(
        color: Colors.white,
        backgroundColor: Colors.blue,
        onRefresh: () async {
          // Replace this delay with the code to be executed during refresh
          // and return asynchronous code
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        // This check is used to customize listening to scroll notifications
        // from the widget's children.
        //
        // By default this is set to `notification.depth == 0`, which ensures
        // the only the scroll notifications from the first child are listened to.
        //
        // Here setting `notification.depth == 1` triggers the refresh indicator
        // when overscrolling the nested scroll view.
        notificationPredicate: (ScrollNotification notification) {
          return notification.depth == 1;
        },
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                alignment: Alignment.center,
                color: Colors.pink[100],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Pull down here',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    const Text("RefreshIndicator won't trigger"),
                  ],
                ),
              ),
              Container(
                color: Colors.green[100],
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 25,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListTile(
                      title: Text('Pull down here'),
                      subtitle: Text('RefreshIndicator will trigger'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
