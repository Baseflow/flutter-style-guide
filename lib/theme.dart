import 'package:flutter/material.dart';

import 'ui.dart';

// https://medium.com/flutter-community/themes-in-flutter-part-1-75f52f2334ea
// https://medium.com/flutter-community/themes-in-flutter-part-2-706382bc32c5
// https://medium.com/flutter-community/themes-in-flutter-part-3-71361ffdc344

final Color kPrimaryColor = Colors.orange[500];
final Color kPrimaryColorDarker = Colors.orange[700];
final Color kOnPrimaryColor = Colors.white;

final Color kAccentColor = Color.fromRGBO(2, 119, 189, 1);
final Color kOnAccentColor = Colors.white;

final Color kBackgroundColor = Colors.grey[100];
final Color kSurfaceColor = Colors.white;

final Color kOnSurfaceColor = Colors.grey[800];

final Color kBorderColor = Colors.grey[300];

final Color kDividerColor = Colors.grey[200];

final Color kErrorColor = Colors.redAccent[700];
final Color kOnErrorColor = Colors.white;

ThemeData buildTheme(BuildContext context) {
  final theme = Theme.of(context);

  final colorScheme = _buildColorScheme();

  return ThemeData(
    // TODO: Could be removed soon as the PR for the fix for the app bar is already completed
    // https://github.com/flutter/flutter/issues/67921
    primaryColor: colorScheme.primary,
    primaryColorBrightness: Brightness.dark,

    colorScheme: colorScheme,
    scaffoldBackgroundColor: kBackgroundColor,
    cardColor: kSurfaceColor,
    dividerColor: kDividerColor,
    textTheme: _buildTextTheme(theme),
    iconTheme: _buildIconTheme(),
    elevatedButtonTheme: _buildElevatedButtonTheme(colorScheme),
    outlinedButtonTheme: _buildOutlinedButtonTheme(),
    chipTheme: buildChipTheme(context),
  );
}

TextTheme _buildTextTheme(ThemeData theme) {
  return theme.textTheme.copyWith(
    button: theme.textTheme.button.copyWith(
      fontWeight: SgeFontWeight.bold,
    ),
  );
}

IconThemeData _buildIconTheme() {
  return const IconThemeData.fallback().copyWith(
    color: kOnSurfaceColor,
  );
}

ElevatedButtonThemeData _buildElevatedButtonTheme(ColorScheme colorScheme) {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: colorScheme.secondary,
      elevation: 0.0,
      padding: const EdgeInsets.all(24.0),
    ),
  );
}

OutlinedButtonThemeData _buildOutlinedButtonTheme() {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      backgroundColor: Colors.transparent,
      primary: kOnSurfaceColor,
      padding: const EdgeInsets.all(24.0),
      side: BorderSide(
        color: kBorderColor,
        width: 1.5,
      ),
    ),
  );
}

ColorScheme _buildColorScheme() {
  return ColorScheme(
    primary: kPrimaryColor,
    primaryVariant: kPrimaryColorDarker,
    onPrimary: kOnPrimaryColor,
    secondary: kAccentColor,
    secondaryVariant: kAccentColor,
    onSecondary: kOnPrimaryColor,
    background: kBackgroundColor,
    onBackground: kOnSurfaceColor,
    surface: kSurfaceColor,
    onSurface: kOnSurfaceColor,
    error: kErrorColor,
    onError: kOnErrorColor,
    brightness: Brightness.light,
  );
}

ChipThemeData buildChipTheme(
  BuildContext context, {
  Color backgroundColor,
  Color deleteIconColor,
  Color disabledColor,
  Color selectedColor,
  Color secondarySelectedColor,
  Color shadowColor,
  Color selectedShadowColor,
  bool showCheckmark,
  Color checkmarkColor,
  EdgeInsetsGeometry labelPadding,
  EdgeInsetsGeometry padding,
  ShapeBorder shape,
  TextStyle labelStyle,
  TextStyle secondaryLabelStyle,
  Brightness brightness,
  double elevation,
  double pressElevation,
}) {
  backgroundColor = backgroundColor ?? kPrimaryColor;
  assert(backgroundColor != null);
  disabledColor = disabledColor ?? kPrimaryColor.withOpacity(0.4);
  assert(disabledColor != null);
  selectedColor = selectedColor ?? kPrimaryColor;
  assert(selectedColor != null);
  secondarySelectedColor = secondarySelectedColor ?? kPrimaryColor;
  assert(secondarySelectedColor != null);
  padding = padding ?? const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0);
  assert(padding != null);
  shape = shape ??
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(1000.0)),
        side: BorderSide.none,
      );
  assert(shape != null);
  labelStyle = labelStyle ?? buildChipThemeTextStyle(context);
  assert(labelStyle != null);
  secondaryLabelStyle = secondaryLabelStyle ?? buildChipThemeTextStyle(context);
  assert(secondaryLabelStyle != null);
  brightness = brightness ?? Brightness.light;
  assert(brightness != null);

  return ChipThemeData(
    backgroundColor: backgroundColor,
    deleteIconColor: deleteIconColor ?? kOnPrimaryColor,
    disabledColor: disabledColor,
    selectedColor: selectedColor,
    secondarySelectedColor: secondarySelectedColor,
    shadowColor: shadowColor,
    selectedShadowColor: selectedShadowColor,
    showCheckmark: showCheckmark,
    checkmarkColor: checkmarkColor ?? kOnPrimaryColor,
    labelPadding: labelPadding ?? EdgeInsets.fromLTRB(6, 4, 6, 4),
    padding: padding,
    shape: shape,
    labelStyle: labelStyle,
    secondaryLabelStyle: secondaryLabelStyle ?? kOnPrimaryColor,
    brightness: brightness,
    elevation: elevation ?? 0,
    pressElevation: pressElevation ?? 0,
  );
}

buildChipThemeTextStyle(
  BuildContext context, {
  Color color,
  double fontSize,
}) {
  final theme = Theme.of(context);
  return TextStyle(
    color: color ?? kOnPrimaryColor,
    fontSize: fontSize ?? theme.textTheme?.button?.fontSize ?? 16,
    fontWeight: SgeFontWeight.semiBold,
  );
}
