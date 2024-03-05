import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_svg_picture.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text_field.dart';
import 'package:lingo_learn/feature/choos_language/presentation/pages/choos_language.dart';
import 'package:lingo_learn/generated/assets.dart';

import '../../../app/presentation/widgets/app_text.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding:REdgeInsetsDirectional.only(start: 20,end: 20,top: 80,bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(child: AppSvgPicture(Assets.svgLogoApp)),
            40.verticalSpace,
            AppTextField(
              name: 'code',
              title: 'الكود',
              maxLines: 1,
            ),
            10.verticalSpace,
            AppTextField(
              name: 'pass',
              title: 'كلمة المرور الجديدة',
              isPasswordFiled: true,
              obscure: true,
              maxLines: 1,
            ),
            10.verticalSpace,
            AppTextField(
              name: 'new pass',
              title: 'تأكيد كلمة المرور الجديدة',
              isPasswordFiled: true,
              obscure: true,
              maxLines: 1,
            ),
            Spacer(),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseLanguage(),));
                },

                child: const AppText('التالي')
            ),

          ],
        ),
      ),
    );
  }
}
