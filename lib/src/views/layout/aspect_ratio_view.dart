///
/// File: \lib\src\views\layout\aspect_ratio_view.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 12:42:59 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 12:59:10 am
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
import 'package:widget_design/src/widgets/layout/widget.dart';

class AspectRatioView extends StatelessWidget {
  const AspectRatioView({super.key});
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
              const Expanded(child: AspectRatioWidget()),
              const Divider(),
              // syntax highlighting
              Selector<AspectRatioModel, String>(
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
              // Selector<AspectRatioModel, List<AlignmentGeometry>>(
              //   selector: (_, animProperties) => AlignmentList.listAlignment,
              //   builder: (context, list, child) =>
              //       DropdownDesignerAlignment<AspectRatioModel>(
              //     items: list,
              //   ),
              // ),
              // const NumberDesignerHeight<AspectRatioModel>(),
              // const NumberDesignerWidth<AspectRatioModel>(),
              NumberDesignerAspectRatio<AspectRatioModel>(),
            ],
          ),
        ),
      ],
    );
  }
}
