// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Ứng dụng Flutter Cơ bản';

  @override
  String counterValue(int value) {
    return 'Giá trị bộ đếm: $value';
  }

  @override
  String get increment => 'Tăng lên';
}
