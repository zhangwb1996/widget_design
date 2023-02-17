///
/// File: \lib\src\views\layout\single_child\align_view.dart
/// Project: widget_design
/// -----
/// Created Date: Thursday, 2023-02-16 9:08:56 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:58:15 am
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

import 'package:widget_design/src/models/widgets/layout/single_child/align_model.dart';

import 'package:widget_design/src/widgets/layout/single_child/widget.dart';

class AlignView extends StatelessWidget {
  const AlignView({super.key});
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
              const Expanded(child: AlignWidget()),
              const Divider(),
              // syntax highlighting
              Selector<AlignModel, String>(
                selector: (_, layout) => layout.code,
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
              Selector<AlignModel, List<AlignmentGeometry>>(
                selector: (_, animProperties) => AlignmentList.listAlignment,
                builder: (context, list, child) =>
                    DropdownDesignerAlignment<AlignModel>(
                  items: list,
                ),
              ),
              const NumberDesignerHeight<AlignModel>(),
              const NumberDesignerWidth<AlignModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
