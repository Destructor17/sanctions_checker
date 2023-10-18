import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sanctions_checker/features/settings/presentation/settings_view.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsView();
  }
}
