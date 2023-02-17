///
/// File: \lib\src\models\properties\default\fractional_offset_list.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 4:23:21 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:51:49 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class FractionalOffsetMap {
  static Map<String, FractionalOffset> fractionalOffset = {
    "FractionalOffset.topLeft": FractionalOffset.topLeft,
    "FractionalOffset.topCenter": FractionalOffset.topCenter,
    "FractionalOffset.topRight": FractionalOffset.topRight,
    "FractionalOffset.centerLeft": FractionalOffset.centerLeft,
    "FractionalOffset.centerRight": FractionalOffset.centerRight,
    "FractionalOffset.center": FractionalOffset.center,
    "FractionalOffset.bottomLeft": FractionalOffset.bottomLeft,
    "FractionalOffset.bottomCenter": FractionalOffset.bottomCenter,
    "FractionalOffset.bottomRight": FractionalOffset.bottomRight,
  };
}
