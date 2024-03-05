import 'package:flutter/material.dart';
import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';

import '../../../../core/config/theme/colors_app.dart';


class TrackLanguage extends StatelessWidget {
  const TrackLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyStepper(

      enableStepTapping: false,
      direction: Axis.vertical,
      lineStyle: LineStyle(
        lineLength: 40.w,
        lineSpace: 1,
        lineType: LineType.normal,
        defaultLineColor: Colors.white,
        finishedLineColor: context.colorScheme.primary,
        activeLineColor: const Color(0xffcccccc),
      ),
      activeStepBorderColor: context.colorScheme.primary,
      activeStepIconColor: context.colorScheme.onPrimary,
      activeStepTextColor: context.colorScheme.primary,
      activeStepBackgroundColor: context.colorScheme.primary,
      unreachedStepBackgroundColor: AppColors.whiteGrey,
      unreachedStepBorderColor: Colors.grey.withOpacity(0.5),
      unreachedStepIconColor:  Colors.black,
      unreachedStepTextColor: Colors.black,
      finishedStepTextColor:  Colors.black,
      finishedStepBackgroundColor: context.colorScheme.primary,
      stepRadius: 20.r,
      showLoadingAnimation: false,
      padding: EdgeInsets.zero,
      steps: [
         EasyStep(
             customStep: AppText('1'),
           topTitle: true,
        ),
        EasyStep(
            customStep: AppText('2'),

        ),
        EasyStep(
            customStep: AppText('3'),

        ),
        EasyStep(
            customStep: AppText('4'),
        ),
        EasyStep(
            customStep: AppText('4'),
            title: 'المستوى الأول'
        ),
        EasyStep(
            customStep: AppText('4'),
            title: 'المستوى الأول'
        ),
        EasyStep(
            customStep: AppText('4'),
            title: 'المستوى الأول'
        ),

      ], activeStep:3,
    );
  }
}
