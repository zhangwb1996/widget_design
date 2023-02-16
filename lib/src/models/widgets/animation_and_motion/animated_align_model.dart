///
/// File: \lib\src\models\widgets\animation_and_motion\animated_align_model.dart
/// Project: widget_design
/// -----
/// Created Date: Sunday, 2023-02-12 11:02:43 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 10:03:54 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:widget_design/src/models/properties/default/widget.dart';

import 'base/animated_model.dart';

class AnimatedAlignModel extends AnimatedModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''  
    return GestureDetector(
      onTap: () {
        selected=!selected;
      },
      child: AnimatedAlign(
        alignment:selected? Alignment.topRight:$alignment,
        duration: Duration(seconds: $duration),
        curve: ${CurveMap.mapCurve.keys.firstWhere((k) => CurveMap.mapCurve[k] == curve)},
        child: const FlutterLogo(size: 50.0),
      ),
    );   
''';
    notifyListeners();
  }
}
