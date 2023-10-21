import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:ui_kit/ui_kit.dart';

Widget Function(Widget) appTestWrapper(AppThemeData theme) {
  return (windget) {
    return materialAppWrapper(theme: theme.materialTheme)(AppTheme(
      theme: theme,
      child: Localizations(
        delegates: AppLocalizations.localizationsDelegates,
        locale: const Locale('en'),
        child: windget,
      ),
    ));
  };
}
