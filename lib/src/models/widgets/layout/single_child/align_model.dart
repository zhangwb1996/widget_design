///
/// File: \lib\src\models\widgets\layout\single_child\align_model.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:08:33 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:55:06 am
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import '../base/layout_model.dart';

class AlignModel extends LayoutModel {
  String _code = ' ';
  @override
  String get code => _code;
  @override
  void setCode() {
    _code = '''
    Center(
      child: Container(
        height: $height,
        width: $width,
        color: Colors.blue[50],
        child: const Align(
          alignment: $alignment,
          child: FlutterLogo(
            size: 60,
          ),
        ),
      ),
    )  
    ''';
    notifyListeners();
  }
}
