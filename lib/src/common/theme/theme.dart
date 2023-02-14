///
/// File: \lib\src\common\theme\theme.dart
/// Project: widget_design
/// -----
/// Created Date: Monday, 2023-02-13 6:29:09 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Monday, 2023-02-13 6:45:26 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

final appTheme = ThemeData(
  // colorSchemeSeed: Colors.yellow,
  primaryColor: Colors.blue,
  useMaterial3: true,
  textTheme: const TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Corben',
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: Colors.black,
    ),
  ),
);
