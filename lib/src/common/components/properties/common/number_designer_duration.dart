///
/// File: \lib\src\common\components\number_designer_duration.dart
/// Project: widget_design
/// -----
/// Created Date: Tuesday, 2023-02-14 10:31:36 am
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Thursday, 2023-02-16 11:27:57 pm
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

import 'package:widget_design/src/models/widgets/base_model.dart';

class NumberDesignerDuration<T extends BaseModel> extends StatefulWidget {
  const NumberDesignerDuration({super.key});

  @override
  State<NumberDesignerDuration<T>> createState() => _NumberDesignerState<T>();
}

class _NumberDesignerState<T extends BaseModel>
    extends State<NumberDesignerDuration<T>> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.text = context.read<T>().duration.toString();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('NumberDesigner.build');

    /// context.select
    // var dur = context.select<AnimatedAlignModel, int>(
    //   (model) => model.duration,
    // );

    controller.selection =
        TextSelection.collapsed(offset: controller.text.length);
    // controller.
    // return TextField(
    //   controller: controller,
    //   onChanged: (v) {
    //     if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //       controller.text = '';
    //     }
    //     dur = int.parse(controller.text);
    //   },
    // );

    /// Selector<>
    // return Selector<AnimatedAlignModel, int>(
    //   selector: (_, animationProperties) => animationProperties.duration,
    //   builder: (context, data, child) => TextField(
    //     controller: controller,
    //     onChanged: (v) {
    //       if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //         controller.text = '';
    //       }
    //       data = int.parse(controller.text);
    //     },
    //   ),
    // );

    /// context.watch
    // var dur1 = context.watch<AnimatedAlignModel>();
    // controller.text = dur1.duration.toString();
    // return TextField(
    //   controller: controller,
    //   onChanged: (v) {
    //     if (RegExp(r"\d+").allMatches(v, 0).isEmpty) {
    //       controller.text = '';
    //     }
    //     dur1.duration = int.parse(controller.text);
    //   },
    // );

    /// Consumer
    return ListTile(
      leading: const Text('duration'),
      title: Consumer<T>(
        builder: (context, model, child) => TextField(
          controller: controller,
          onChanged: (v) {
            if (RegExp(r"^\d+$").allMatches(v, 0).isEmpty) {
              controller.text = '';
            }
            model.duration =
                int.parse(controller.text.isEmpty ? '0' : controller.text);
            model.setCode();
          },
        ),
      ),
    );
  }
}

// class NumberDesigner extends StatefulWidget {
//   const NumberDesigner({super.key});

//   @override
//   State<NumberDesigner> createState() => _NumberDesignerState();
// }

// class _NumberDesignerState extends State<NumberDesigner> {
//   final TextEditingController _controller = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _controller.addListener(
//       () {
//         final String text = _controller.text.toLowerCase();
//         _controller.value = _controller.value.copyWith(
//           text: text,
//           selection:
//               TextSelection(baseOffset: text.length, extentOffset: text.length),
//           composing: TextRange.empty,
//         );
//       },
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       alignment: Alignment.center,
//       padding: const EdgeInsets.all(6),
//       child: TextFormField(
//         controller: _controller,
//         decoration: const InputDecoration(border: OutlineInputBorder()),
//       ),
//     );
//   }
// }
