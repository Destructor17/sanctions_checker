import 'package:ui_kit/src/theme/data/colors/background_color_data.dart';
import 'package:ui_kit/src/theme/data/colors/error_color_data.dart';
import 'package:ui_kit/src/theme/data/colors/neutral_color_data.dart';
import 'package:ui_kit/src/theme/data/colors/primary_color_data.dart';
import 'package:ui_kit/src/theme/data/colors/success_color_data.dart';

class AppColorScheme {
  const AppColorScheme({
    required this.primary,
    required this.background,
    required this.neutral,
    required this.error,
    required this.success,
  });

  factory AppColorScheme.light() => AppColorScheme(
        primary: PrimaryColorsData.light(),
        background: BackgroundColorsData.light(),
        neutral: NeutralColorsData.light(),
        error: ErrorColorsData.regular(),
        success: SuccessColorsData.regular(),
      );

  factory AppColorScheme.dark() => AppColorScheme(
        primary: PrimaryColorsData.dark(),
        background: BackgroundColorsData.dark(),
        neutral: NeutralColorsData.dark(),
        error: ErrorColorsData.regular(),
        success: SuccessColorsData.regular(),
      );

  final PrimaryColorsData primary;
  final BackgroundColorsData background;
  final NeutralColorsData neutral;
  final ErrorColorsData error;
  final SuccessColorsData success;
}
