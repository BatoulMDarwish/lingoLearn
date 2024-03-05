import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/colors_app.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';
import 'package:lingo_learn/feature/splash&onboarding/cubit/onboarding_cubit.dart';
import 'package:lingo_learn/feature/splash&onboarding/data_source/data_source.dart';

import '../cubit/onboarding_state.dart';
import 'animation_elipse_widget.dart';




class CustomSliderOnBoarding extends StatelessWidget {
  const CustomSliderOnBoarding({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnBoardingCubit ,OnBoardingState>(builder: (context, state) =>
        SizedBox(
          height: 400.h,
          child: PageView.builder(
              reverse: true,
              controller: OnBoardingCubit.get(context).pageController,
              onPageChanged: (val){
                OnBoardingCubit.get(context).onPageChanged(val);
              },
              itemCount: OnBoardingList.length,
              itemBuilder: (context,i)=>Column(
                children: [
                  Image.asset(
                      OnBoardingList[i].image!,
                      fit:BoxFit.fill
                  ),
                  45.verticalSpace,
                  AppText(
                    OnBoardingList[i].body!,
                    textAlign:TextAlign.center ,
                    style: context.textTheme.titleMedium?.b
                  ),
                ],
              )
          ),
        ) ,
    );
  }
}