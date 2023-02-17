///
/// File: \lib\src\models\properties\default\fractional_offset_list.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 4:23:21 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:24:28 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class FractionalOffsetList {
  static List<FractionalOffset> fractionalOffset = [
    FractionalOffset.topLeft,
    FractionalOffset.topCenter,
    FractionalOffset.topRight,
    FractionalOffset.centerLeft,
    FractionalOffset.centerRight,
    FractionalOffset.center,
    FractionalOffset.bottomLeft,
    FractionalOffset.bottomCenter,
    FractionalOffset.bottomRight,
  ];
}
