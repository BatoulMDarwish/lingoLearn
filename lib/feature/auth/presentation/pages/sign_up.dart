import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_svg_picture.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text_field.dart';
import 'package:lingo_learn/feature/choos_language/presentation/pages/choos_language.dart';
import 'package:lingo_learn/generated/assets.dart';

import '../../../app/presentation/widgets/app_text.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding:REdgeInsetsDirectional.only(start: 20,end: 20,top: 40),
        child: Column(
          children: [

            const AppSvgPicture(Assets.svgLogoApp),
            40.verticalSpace,
            AppTextField(
                name: 'email',
              title: 'البريد الإلكتروني',
              maxLines: 1,
            ),
            10.verticalSpace,
            AppTextField(
              name: 'name',
              title: ' الاسم',
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
            10.verticalSpace,
            AppTextField(
              name: 'confirm pass',
              title: 'تأكيد كلمة المرور',
              isPasswordFiled: true,
              obscure: true,
              maxLines: 1,
            ),
            40.verticalSpace,
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLanguage(),));
                },

                child: const AppText('إنشاء الحساب')
            ),

          ],
        ),
      ),
    );
  }
}
