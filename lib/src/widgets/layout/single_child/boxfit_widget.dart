///
/// File: \lib\src\widgets\layout\single_child\boxfit_widget.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 3:44:54 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 4:06:57 pm
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
import 'package:widget_design/src/models/widgets/layout/widget.dart';

class BoxFitWidget extends StatelessWidget {
  const BoxFitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 300,
        width: 300,
        color: Colors.blue,
        child: Consumer<BoxFitModel>(
          builder: (context, model, child) {
            return Center(
              child: Container(
                height: 200,
                width: 150,
                color: Colors.red,
                child: FittedBox(
                  fit: model.boxfit,
                  child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
