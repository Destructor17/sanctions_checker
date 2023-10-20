import 'package:flutter/material.dart';
import 'package:ui_kit/ui_kit.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      builder: (context, theme) {
        return MaterialApp(
          builder: (context, child) => Scaffold(
            body: ListView(
              children: [
                AppButton(onPressed: () {}, text: "common"),
              ],
            ),
          ),
        );
      },
    );
  }
}
