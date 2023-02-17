///
/// File: \lib\src\views\layout\single_child\center_view.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 2:23:40 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:26:26 pm
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

import 'package:widget_design/src/common/components/widget.dart';
import 'package:widget_design/src/common/tools/widget.dart';

import 'package:widget_design/src/models/widgets/layout/widget.dart';
import 'package:widget_design/src/widgets/layout/single_child/widget.dart';

class CenterView extends StatelessWidget {
  const CenterView({super.key});
  // bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // main content
        Expanded(
          child: Column(
            children: [
              // widget view
              const Expanded(child: CenterWidget()),
              const Divider(),
              // syntax highlighting
              Selector<CenterModel, String>(
                selector: (_, model) => model.code,
                builder: (context, code, child) => SyntaxHighlight(
                  code: code,
                ),
              ),
            ],
          ),
        ),
        // divider
        const VerticalDivider(),
        // designer
        SizedBox(
          width: 300,
          child: Column(
            children: const [
              NumberDesignerHeightFactor<CenterModel>(),
              NumberDesignerWidthFactor<CenterModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
