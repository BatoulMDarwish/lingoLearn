import 'package:flutter/material.dart';
import 'package:lingo_learn/common/models/localization_config.dart';
import 'package:lingo_learn/feature/app/presentation/pages/app.dart';
import 'package:lingo_learn/generated/codegen_loader.g.dart';
import 'package:lingo_learn/initialization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization(
        () => const App(),
    localizationConfig: LocalizationConfig(assetLoader: const CodegenLoader()),
  );
}
