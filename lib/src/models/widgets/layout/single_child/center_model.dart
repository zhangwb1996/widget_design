///
/// File: \lib\src\models\widgets\layout\single_child\center_model.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 2:14:50 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:18:53 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import '../base/layout_model.dart';

class CenterModel extends LayoutModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
        return Center(
          widthFactor: $widthFactor,
          heightFactor: $heightFactor,
          child: Container(
            height: 100,
            width: 100,
            color: Colors.blue[50],
          ),
        );
    ''';
    notifyListeners();
  }
}
