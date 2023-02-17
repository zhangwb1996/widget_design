///
/// File: \lib\src\preview\material_components\information_displays\layout\list_tile\list_tile_preview1.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:49:49 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 11:50:49 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class LisTilePreview1 extends StatefulWidget {
  const LisTilePreview1({super.key});

  @override
  State<LisTilePreview1> createState() => _LisTileExampleState();
}

class _LisTileExampleState extends State<LisTilePreview1>
    with TickerProviderStateMixin {
  late final AnimationController _fadeController;
  late final AnimationController _sizeController;
  late final Animation<double> _fadeAnimation;
  late final Animation<double> _sizeAnimation;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _sizeController = AnimationController(
      duration: const Duration(milliseconds: 850),
      vsync: this,
    )..repeat(reverse: true);

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _sizeAnimation = CurvedAnimation(
      parent: _sizeController,
      curve: Curves.easeOut,
    );
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Hero(
          tag: 'ListTile-Hero',
          // Wrap the ListTile in a Material widget so the ListTile has someplace
          // to draw the animated colors during the hero transition.
          child: Material(
            child: ListTile(
              title: const Text('ListTile with Hero'),
              subtitle: const Text('Tap here for Hero transition'),
              tileColor: Colors.cyan,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute<Widget>(builder: (BuildContext context) {
                    return Scaffold(
                      appBar: AppBar(title: const Text('ListTile Hero')),
                      body: Center(
                        child: Hero(
                          tag: 'ListTile-Hero',
                          child: Material(
                            child: ListTile(
                              title: const Text('ListTile with Hero'),
                              subtitle: const Text('Tap here to go back'),
                              tileColor: Colors.blue[700],
                              onTap: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                );
              },
            ),
          ),
        ),
        FadeTransition(
          opacity: _fadeAnimation,
          // Wrap the ListTile in a Material widget so the ListTile has someplace
          // to draw the animated colors during the fade transition.
          child: const Material(
            child: ListTile(
              title: Text('ListTile with FadeTransition'),
              selectedTileColor: Colors.green,
              selectedColor: Colors.white,
              selected: true,
            ),
          ),
        ),
        SizedBox(
          height: 100,
          child: Center(
            child: SizeTransition(
              sizeFactor: _sizeAnimation,
              axisAlignment: -1.0,
              // Wrap the ListTile in a Material widget so the ListTile has someplace
              // to draw the animated colors during the size transition.
              child: const Material(
                child: ListTile(
                  title: Text('ListTile with SizeTransition'),
                  tileColor: Colors.red,
                  minVerticalPadding: 25.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
