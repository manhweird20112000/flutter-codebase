import 'package:flutter/material.dart';

class AppRadius {
  AppRadius._();

  /// 4.0
  static const double xs = 4.0;

  /// 8.0
  static const double sm = 8.0;

  /// 12.0
  static const double md = 12.0;

  /// 16.0
  static const double lg = 16.0;

  /// 24.0
  static const double xl = 24.0;

  /// 32.0
  static const double xxl = 32.0;

  // BorderRadius helpers
  static final BorderRadius brXS = BorderRadius.circular(xs);
  static final BorderRadius brSM = BorderRadius.circular(sm);
  static final BorderRadius brMD = BorderRadius.circular(md);
  static final BorderRadius brLG = BorderRadius.circular(lg);
  static final BorderRadius brXL = BorderRadius.circular(xl);
  static final BorderRadius brXXL = BorderRadius.circular(xxl);

  // Radius helpers
  static const Radius rXS = Radius.circular(xs);
  static const Radius rSM = Radius.circular(sm);
  static const Radius rMD = Radius.circular(md);
  static const Radius rLG = Radius.circular(lg);
  static const Radius rXL = Radius.circular(xl);
  static const Radius rXXL = Radius.circular(xxl);
}
