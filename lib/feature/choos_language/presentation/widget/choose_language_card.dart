import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

class ChooseLanguageCard extends StatelessWidget {
  const ChooseLanguageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsetsDirectional.only(end: 10,top: 20,bottom: 10),
      margin: REdgeInsetsDirectional.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Colors.white
      ),
      child: Column(
        children: [
          Image.asset('assets/image/photo_2024-01-04_07-04-36.jpg',height: 40.h),
          60.horizontalSpace,
          AppText(' Python  لغة',style: context.textTheme.titleLarge.b.withColor(context.colorScheme.primary),),
          10.horizontalSpace,
        ],
      ),
    );
  }
}
