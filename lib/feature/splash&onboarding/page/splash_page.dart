import 'dart:developer';

import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/splash&onboarding/page/onboarding.dart';
import'package:lingo_learn/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../app/presentation/widgets/app_scaffold.dart';
import '../../app/presentation/widgets/app_svg_picture.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
          () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnBoardingScreen(),)),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: REdgeInsetsDirectional.only(top: 250,bottom: 30),
        child: Center(
          child: Column(
            children: [
              AppSvgPicture(Assets.svgLogoApp),
              10.verticalSpace,
              LoadingAnimationWidget.flickr(
                leftDotColor: context.colorScheme.onPrimary,
                rightDotColor: context.colorScheme.primary,
                size: 45.r,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
