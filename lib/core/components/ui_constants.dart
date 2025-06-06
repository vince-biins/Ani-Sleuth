import 'package:ani_sleuth/core/util.dart';
import 'package:flutter/material.dart';

class UiConstantsProvider {
  static const double containerPadding = 8.0;
  static const double spacing = 8.0;
  static const double containerMargin = 8.0;
  static const double containerBorderRadius = 8.0;
  static const double _compactScreenWidth = 120.0;
  static const double _mediumScreenWidth = 150.0;
  static const double _expandedScreenWidth = 200.0;

  static const double _compactScreenHeight = 180.0;
  static const double _mediumScreenHeight = 250.0;
  static const double _expandedScreenHeight = 300.0;

  static double getImageItemWidth(BuildContext context) {
    if (context.isCompact) {
      return _compactScreenWidth;
    } else if (context.isMedium) {
      return _mediumScreenWidth;
    } else {
      return _expandedScreenWidth;
    }
  }

  static double getImageItemHeight(BuildContext context) {
    if (context.isCompact) {
      return _compactScreenHeight;
    } else if (context.isMedium) {
      return _mediumScreenHeight;
    } else {
      return _expandedScreenHeight;
    }
  }
}
