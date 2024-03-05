import 'package:flutter/material.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

class FavoraitScreen extends StatelessWidget {
  const FavoraitScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title:AppText('المفضلة',style: context.textTheme.titleLarge.withColor(context.colorScheme.primary),),
      ),
    );
  }
}
