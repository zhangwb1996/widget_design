///
/// File: \lib\src\models\widgets\layout\single_child\fractionally_sizedbox_model.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 4:26:09 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:57:17 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:widget_design/src/models/properties/default/fractional_offset_map.dart';

import '../../base_model.dart';

class FractionallySizedBoxModel extends BaseModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
    return SizedBox.expand(
      child: FractionallySizedBox(
        widthFactor: $widthFactor,
        heightFactor: $heightFactor,
        alignment:  ${FractionalOffsetMap.fractionalOffset.keys.firstWhere((k) => FractionalOffsetMap.fractionalOffset[k] == fractionalOffset)},
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 4,
            ),
          ),
        ),
      ),
    );
    ''';
    notifyListeners();
  }
}
