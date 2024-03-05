import 'package:flutter/material.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(child: AppText('الإعدادات')),
    );
  }
}
