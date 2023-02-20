///
/// File: \lib\src\views\layout\single_child\fractionally_sizedbox_view.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 4:36:45 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Monday, 2023-02-20 9:03:39 pm
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

class FractionallySizedBoxView extends StatelessWidget {
  const FractionallySizedBoxView({super.key});
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
              const Expanded(child: FractionallySizedBoxWidget()),
              const Divider(),
              // syntax highlighting
              Selector<FractionallySizedBoxModel, String>(
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
              DropdownDesignerFractionalOffset<FractionallySizedBoxModel>(),
              NumberDesignerWidthFactor<FractionallySizedBoxModel>(),
              NumberDesignerHeightFactor<FractionallySizedBoxModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
