import 'package:flutter/material.dart';

class AppSpacing {
  AppSpacing._();

  /// 4.0
  static const double xs = 4.0;

  /// 8.0
  static const double sm = 8.0;

  /// 16.0
  static const double md = 16.0;

  /// 24.0
  static const double lg = 24.0;

  /// 32.0
  static const double xl = 32.0;

  /// 48.0
  static const double xxl = 48.0;

  // Helper getters for EdgeInsets
  static const EdgeInsets pAllXS = EdgeInsets.all(xs);
  static const EdgeInsets pAllSM = EdgeInsets.all(sm);
  static const EdgeInsets pAllMD = EdgeInsets.all(md);
  static const EdgeInsets pAllLG = EdgeInsets.all(lg);
  static const EdgeInsets pAllXL = EdgeInsets.all(xl);

  // Helper getters for SizedBox (Gaps)
  static const SizedBox gapXS = SizedBox(width: xs, height: xs);
  static const SizedBox gapSM = SizedBox(width: sm, height: sm);
  static const SizedBox gapMD = SizedBox(width: md, height: md);
  static const SizedBox gapLG = SizedBox(width: lg, height: lg);
  static const SizedBox gapXL = SizedBox(width: xl, height: xl);
}
