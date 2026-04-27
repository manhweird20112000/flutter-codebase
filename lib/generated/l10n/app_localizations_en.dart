// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Flutter Base App';

  @override
  String counterValue(int value) {
    return 'Counter Value: $value';
  }

  @override
  String get increment => 'Increment';

  @override
  String get flashcards => 'Flashcards';

  @override
  String get next => 'Next';

  @override
  String get previous => 'Previous';

  @override
  String get flip => 'Flip';

  @override
  String get tapToFlip => 'Tap to Flip';
}
