import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

import '../widget/track.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
       leading: Icon(Icons.notifications,size: 35.r,color: context.colorScheme.primary,),
        actions: [
          Padding(
            padding: REdgeInsetsDirectional.only(end: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText('Account Name',style: context.textTheme.titleSmall.b.withColor(Color(0xffF6BD75)),),
                AppText('Batoul Darwish',style: context.textTheme.titleSmall,),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding:REdgeInsetsDirectional.only(start: 300),
        child: TrackLanguage(),
      ),
    );
  }
}
