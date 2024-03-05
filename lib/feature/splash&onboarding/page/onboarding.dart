import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';
import 'package:lingo_learn/feature/auth/presentation/pages/welcome.dart';
import 'package:lingo_learn/feature/splash&onboarding/cubit/onboarding_cubit.dart';
import 'package:lingo_learn/feature/splash&onboarding/cubit/onboarding_state.dart';
import 'package:lingo_learn/feature/splash&onboarding/widget/slider_onboarding.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  static const routeName = '/onBoarding';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocBuilder<OnBoardingCubit, OnBoardingState>(
        builder: (context, state) {
          print(state.currentPage);
          return Scaffold(
            body: Column(
              children: [
                184.verticalSpace,
                const CustomSliderOnBoarding(),
                15.verticalSpace,
                Padding(
                  padding: REdgeInsetsDirectional.only(start: 110,end: 110,bottom: 97),
                  child: ElevatedButton(
                      onPressed: (){
                        if(state.currentPage == 2){
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WelcomeScreen(),
                          ));
                        }
                        OnBoardingCubit.get(context).next(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: context.colorScheme.onPrimary,
                        foregroundColor: context.colorScheme.primary
                      ),
                      child: const AppText('التالي')
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}