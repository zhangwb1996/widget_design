///
/// File: \lib\src\views\layout\single_child\baseline_text_view.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 11:34:49 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 2:12:37 pm
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
import 'package:widget_design/src/models/properties/default/widget.dart';

import 'package:widget_design/src/models/widgets/layout/widget.dart';
import 'package:widget_design/src/widgets/layout/single_child/widget.dart';

class BaselineTextView extends StatelessWidget {
  const BaselineTextView({super.key});
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
              const Expanded(child: BaselineTextWidget()),
              const Divider(),
              // syntax highlighting
              Selector<BaselineModel, String>(
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
            children: [
              Selector<BaselineModel, List<TextBaseline>>(
                selector: (_, model) => TextBaselineList.baseline,
                builder: (context, list, child) =>
                    DropdownDesignerBaselineType<BaselineModel>(
                  items: list,
                ),
              ),
              const NumberDesignerBaseline<BaselineModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
