///
/// File: \lib\src\models\properties\default\boxfit_list.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 3:39:08 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 3:43:08 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class BoxFitList {
  static List<BoxFit> boxFitList = [
    BoxFit.contain,
    BoxFit.cover,
    BoxFit.fill,
    BoxFit.fitHeight,
    BoxFit.fitWidth,
    BoxFit.none,
    BoxFit.scaleDown,
  ];
}
