///
/// File: \lib\main.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 3:09:16 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Tuesday, 2023-02-14 9:43:49 am
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

import 'src/models/animation_and_motion/widget.dart';
import 'src/widget_design.dart';

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
        //     AnimationPropertiesModel>(
        //   create: (context) => AnimationPropertiesModel(),
        //   update: (context, alignment, animationProperties) {
        //     if (animationProperties == null) {
        //       throw ArgumentError.notNull('AnimationProperties');
        //     }
        //     animationProperties.alignment = alignment;
        //     return animationProperties;
        //   },
        // ),
        ChangeNotifierProvider(
          create: (context) => AnimationPropertiesModel(),
          lazy: true,
        ),
        // curve
        // ChangeNotifierProxyProvider<Curve, AnimationPropertiesModel>(
        //   create: (context) => AnimationPropertiesModel(),
        //   update: (context, curve, animationProperties) {
        //     if (animationProperties == null) {
        //       throw ArgumentError.notNull('AnimationProperties');
        //     }
        //     animationProperties.curve = curve;
        //     return animationProperties;
        //   },
        // ),
        // cubic
        // ChangeNotifierProxyProvider<Cubic, AnimationPropertiesModel>(
        //   create: (context) => AnimationPropertiesModel(),
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
