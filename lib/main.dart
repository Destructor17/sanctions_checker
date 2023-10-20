import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sanctions_checker/app/router/app_router.r.dart';
import 'package:sanctions_checker/services/service_locator.dart';
import 'package:ui_kit/ui_kit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await slInit();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      builder: (context, theme) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: theme.materialTheme,
          darkTheme: theme.materialTheme,
          routerConfig: appRouter.config(
            navigatorObservers: () => [],
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
        );
      },
    );
  }
}
