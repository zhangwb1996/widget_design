///
/// File: \lib\src\preview\material_components\buttons\icon_button\icon_button_preview3.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:34:11 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:35:48 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class IconButtonPreview3 extends StatelessWidget {
  const IconButtonPreview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: const <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    final ColorScheme colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              icon: const Icon(Icons.filter_drama), onPressed: onPressed),

          // Use a standard IconButton with specific style to implement the
          // 'Filled' type.
          IconButton(
              icon: const Icon(Icons.filter_drama),
              onPressed: onPressed,
              style: IconButton.styleFrom(
                foregroundColor: colors.onPrimary,
                backgroundColor: colors.primary,
                disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
                hoverColor: colors.onPrimary.withOpacity(0.08),
                focusColor: colors.onPrimary.withOpacity(0.12),
                highlightColor: colors.onPrimary.withOpacity(0.12),
              )),

          // Use a standard IconButton with specific style to implement the
          // 'Filled Tonal' type.
          IconButton(
            icon: const Icon(Icons.filter_drama),
            onPressed: onPressed,
            style: IconButton.styleFrom(
              foregroundColor: colors.onSecondaryContainer,
              backgroundColor: colors.secondaryContainer,
              disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
              hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
              focusColor: colors.onSecondaryContainer.withOpacity(0.12),
              highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
            ),
          ),

          // Use a standard IconButton with specific style to implement the
          // 'Outlined' type.
          IconButton(
            icon: const Icon(Icons.filter_drama),
            onPressed: onPressed,
            style: IconButton.styleFrom(
              focusColor: colors.onSurfaceVariant.withOpacity(0.12),
              highlightColor: colors.onSurface.withOpacity(0.12),
              side: onPressed == null
                  ? BorderSide(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.12))
                  : BorderSide(color: colors.outline),
            ).copyWith(
              foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                if (states.contains(MaterialState.pressed)) {
                  return colors.onSurface;
                }
                return null;
              }),
            ),
          ),
        ],
      ),
    );
  }
}
