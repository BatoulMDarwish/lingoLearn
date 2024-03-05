import 'package:flutter/material.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(child: AppText('المسابقات')),
    );
  }
}
