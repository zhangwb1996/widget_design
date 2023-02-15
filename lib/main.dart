///
/// File: \lib\main.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 3:09:16 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Wednesday, 2023-02-15 5:19:51 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:widget_design/src/common/theme/theme.dart';
import 'package:widget_design/src/models/widgets/animation_and_motion/widget.dart';
import 'package:widget_design/src/widget_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider(create: (context) => Alignment()),
        // alignment:
        // ChangeNotifierProxyProvider<AlignmentGeometry,
        //     AnimatedAlignModel>(
        //   create: (context) => AnimatedAlignModel(),
        //   update: (context, alignment, animationProperties) {
        //     if (animationProperties == null) {
        //       throw ArgumentError.notNull('AnimationProperties');
        //     }
        //     animationProperties.alignment = alignment;
        //     return animationProperties;
        //   },
        // ),
        ChangeNotifierProvider(
          create: (context) => AnimatedAlignModel(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (context) => AnimatedContainerModel(),
          lazy: true,
        ),
        // curve
        // ChangeNotifierProxyProvider<Curve, AnimatedAlignModel>(
        //   create: (context) => AnimatedAlignModel(),
        //   update: (context, curve, animationProperties) {
        //     if (animationProperties == null) {
        //       throw ArgumentError.notNull('AnimationProperties');
        //     }
        //     animationProperties.curve = curve;
        //     return animationProperties;
        //   },
        // ),
        // cubic
        // ChangeNotifierProxyProvider<Cubic, AnimatedAlignModel>(
        //   create: (context) => AnimatedAlignModel(),
        //   update: (context, cubic, animationProperties) {
        //     if (animationProperties == null) {
        //       throw ArgumentError.notNull('AnimationProperties');
        //     }
        //     animationProperties.cubic = cubic;
        //     return animationProperties;
        //   },
        // ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        home: Scaffold(
          body: Container(
            color: Colors.grey[200],
            child: const WidgetDesign(),
          ),
        ),
      ),
    );
  }
}
