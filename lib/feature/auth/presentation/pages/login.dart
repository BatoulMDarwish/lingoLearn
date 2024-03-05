import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_svg_picture.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text_field.dart';
import 'package:lingo_learn/feature/auth/presentation/pages/forget_password.dart';
import 'package:lingo_learn/generated/assets.dart';

import '../../../app/presentation/widgets/app_text.dart';
import '../../../choos_language/presentation/pages/choos_language.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding:REdgeInsetsDirectional.only(start: 20,end: 20,top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: const AppSvgPicture(Assets.svgLogoApp)),
            40.verticalSpace,
            AppTextField(
              name: 'email',
              title: 'البريد الإلكتروني',
              maxLines: 1,
            ),
            10.verticalSpace,
            AppTextField(
              name: 'pass',
              title: 'كلمة المرور',
              isPasswordFiled: true,
              obscure: true,
              maxLines: 1,
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPasswordPage(),));
                }, child: AppText('هل نسيت كلمة المرور ؟',style: context.textTheme.bodyMedium.withColor(context.colorScheme.primary),)),
            100.verticalSpace,
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLanguage(),));
                },

                child: const AppText('تسجيل الدخول')
            ),

          ],
        ),
      ),
    );
  }
}
