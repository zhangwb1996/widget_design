///
/// File: \lib\src\models\widgets\animation_and_motion\base\animated_model.dart
/// Project: widget_design
/// -----
/// Created Date: Wednesday, 2023-02-15 2:03:22 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 1:58:20 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:widget_design/src/models/properties/default/widget.dart';
import 'package:widget_design/src/models/widgets/base_model.dart';

abstract class AnimatedModel extends BaseModel {
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
        duration: $duration,
        curve: ${CurveMap.mapCurve.keys.firstWhere((k) => CurveMap.mapCurve[k] == curve)},
        child: const FlutterLogo(size: 50.0),
      ),
    );   
''';
    notifyListeners();
  }
}
