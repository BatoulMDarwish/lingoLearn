import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_svg_picture.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';
import 'package:lingo_learn/feature/auth/presentation/pages/login.dart';
import 'package:lingo_learn/feature/auth/presentation/pages/sign_up.dart';

import '../../../../generated/assets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Center(
        child: Padding(
          padding: REdgeInsetsDirectional.only(start: 40,end: 40,top: 200),
          child: Column(
            children: [

              //const AppSvgPicture(Assets.svgLogoApp),
              165.verticalSpace,
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                  },

                  child: const AppText('تسجيل الدخول')
              ),
              29.verticalSpace,
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: context.colorScheme.onPrimary,
                      foregroundColor: context.colorScheme.primary
                  ),
                  child: const AppText('إنشاء حساب')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
