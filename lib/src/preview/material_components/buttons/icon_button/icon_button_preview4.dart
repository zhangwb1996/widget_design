///
/// File: \lib\src\preview\material_components\buttons\icon_button\icon_button_preview4.dart
/// Project: widget_design
/// -----
/// Created Date: Friday, 2023-02-17 10:34:11 pm
/// Author: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Last Modified: Friday, 2023-02-17 10:36:19 pm
/// Modified By: Wenbo Zhang (zhangwb1996@outlook.com)
/// -----
/// Copyright (c) 2023
/// -----
/// HISTORY:
/// Date      	By	Comments
/// ----------	---	---------------------------------------------------------
///

import 'package:flutter/material.dart';

class IconButtonPreview4 extends StatefulWidget {
  const IconButtonPreview4({super.key});

  @override
  State<IconButtonPreview4> createState() => _DemoIconToggleButtonsState();
}

class _DemoIconToggleButtonsState extends State<IconButtonPreview4> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // Standard IconButton
                children: const <Widget>[
                  DemoIconToggleButton(isEnabled: true),
                  SizedBox(width: 10),
                  DemoIconToggleButton(isEnabled: false),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Filled IconButton
                  DemoIconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledFilledButtonStyle,
                  ),
                  SizedBox(width: 10),
                  DemoIconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledFilledButtonStyle,
                  )
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Filled Tonal IconButton
                  DemoIconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledFilledTonalButtonStyle,
                  ),
                  SizedBox(width: 10),
                  DemoIconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledFilledTonalButtonStyle,
                  ),
                ]),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  // Outlined IconButton
                  DemoIconToggleButton(
                    isEnabled: true,
                    getDefaultStyle: enabledOutlinedButtonStyle,
                  ),
                  SizedBox(width: 10),
                  DemoIconToggleButton(
                    isEnabled: false,
                    getDefaultStyle: disabledOutlinedButtonStyle,
                  ),
                ]),
          ]),
    );
  }
}

class DemoIconToggleButton extends StatefulWidget {
  const DemoIconToggleButton(
      {required this.isEnabled, this.getDefaultStyle, super.key});

  final bool isEnabled;
  final ButtonStyle? Function(bool, ColorScheme)? getDefaultStyle;

  @override
  State<DemoIconToggleButton> createState() => _DemoIconToggleButtonState();
}

class _DemoIconToggleButtonState extends State<DemoIconToggleButton> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    final VoidCallback? onPressed = widget.isEnabled
        ? () {
            setState(() {
              selected = !selected;
            });
          }
        : null;
    ButtonStyle? style;
    if (widget.getDefaultStyle != null) {
      style = widget.getDefaultStyle!(selected, colors);
    }

    return IconButton(
      isSelected: selected,
      icon: const Icon(Icons.settings_outlined),
      selectedIcon: const Icon(Icons.settings),
      onPressed: onPressed,
      style: style,
    );
  }
}

ButtonStyle enabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor: selected ? colors.onPrimary : colors.primary,
    backgroundColor: selected ? colors.primary : colors.surfaceVariant,
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
    hoverColor: selected
        ? colors.onPrimary.withOpacity(0.08)
        : colors.primary.withOpacity(0.08),
    focusColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
    highlightColor: selected
        ? colors.onPrimary.withOpacity(0.12)
        : colors.primary.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    foregroundColor:
        selected ? colors.onSecondaryContainer : colors.onSurfaceVariant,
    backgroundColor:
        selected ? colors.secondaryContainer : colors.surfaceVariant,
    hoverColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onSecondaryContainer.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
  );
}

ButtonStyle disabledFilledTonalButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
  );
}

ButtonStyle enabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    backgroundColor: selected ? colors.inverseSurface : null,
    hoverColor: selected
        ? colors.onInverseSurface.withOpacity(0.08)
        : colors.onSurfaceVariant.withOpacity(0.08),
    focusColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurfaceVariant.withOpacity(0.12),
    highlightColor: selected
        ? colors.onInverseSurface.withOpacity(0.12)
        : colors.onSurface.withOpacity(0.12),
    side: BorderSide(color: colors.outline),
  ).copyWith(
    foregroundColor:
        MaterialStateProperty.resolveWith((Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return colors.onInverseSurface;
      }
      if (states.contains(MaterialState.pressed)) {
        return colors.onSurface;
      }
      return null;
    }),
  );
}

ButtonStyle disabledOutlinedButtonStyle(bool selected, ColorScheme colors) {
  return IconButton.styleFrom(
    disabledForegroundColor: colors.onSurface.withOpacity(0.38),
    disabledBackgroundColor:
        selected ? colors.onSurface.withOpacity(0.12) : null,
    side: selected ? null : BorderSide(color: colors.outline.withOpacity(0.12)),
  );
}
