///
/// File: \lib\src\preview\animation_and_motion\hero\hero_preview_2.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 3:43:24 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 3:58:53 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class HeroPreview2 extends StatelessWidget {
  const HeroPreview2({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HeroExample(),
    );
  }
}

class HeroExample extends StatefulWidget {
  const HeroExample({super.key});

  @override
  State<HeroExample> createState() => HeroExampleState();
}

class HeroExampleState extends State<HeroExample> {
  @override
  void dispose() {
    timeDilation = 1;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 15;

    return Scaffold(
      appBar: AppBar(title: const Text('Hero Sample')),
      body: Column(
        children: <Widget>[
          ListTile(
            leading: Hero(
              tag: 'hero-default-tween',
              child: BoxWidget(
                size: const Size(50.0, 50.0),
                color: Colors.red[700]!.withOpacity(0.5),
              ),
            ),
            title: const Text(
              'This red icon will use a default rect tween during the hero flight.',
            ),
          ),
          const SizedBox(height: 10.0),
          ListTile(
            leading: Hero(
              tag: 'hero-custom-tween',
              createRectTween: (Rect? begin, Rect? end) {
                return MaterialRectCenterArcTween(begin: begin, end: end);
              },
              child: BoxWidget(
                size: const Size(50.0, 50.0),
                color: Colors.blue[700]!.withOpacity(0.5),
              ),
            ),
            title: const Text(
              'This blue icon will use a custom rect tween during the hero flight.',
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _gotoDetailsPage(context),
            child: const Text('Tap to trigger hero flight'),
          ),
        ],
      ),
    );
  }

  void _gotoDetailsPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Second Page'),
        ),
        body: Align(
          alignment: Alignment.bottomRight,
          child: Stack(
            children: <Widget>[
              Hero(
                tag: 'hero-custom-tween',
                createRectTween: (Rect? begin, Rect? end) {
                  return MaterialRectCenterArcTween(begin: begin, end: end);
                },
                child: BoxWidget(
                  size: const Size(400.0, 400.0),
                  color: Colors.blue[700]!.withOpacity(0.5),
                ),
              ),
              Hero(
                tag: 'hero-default-tween',
                child: BoxWidget(
                  size: const Size(400.0, 400.0),
                  color: Colors.red[700]!.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class BoxWidget extends StatelessWidget {
  const BoxWidget({
    super.key,
    required this.size,
    required this.color,
  });

  final Size size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      color: color,
    );
  }
}
