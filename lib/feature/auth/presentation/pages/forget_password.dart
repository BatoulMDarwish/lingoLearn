import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/typography.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_svg_picture.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text_field.dart';
import 'package:lingo_learn/feature/auth/presentation/pages/reset_password.dart';
import 'package:lingo_learn/generated/assets.dart';

import '../../../app/presentation/widgets/app_text.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding:REdgeInsetsDirectional.only(start: 20,end: 20,top: 80,bottom: 40),
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
            Spacer(),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPasswordPage(),));
                },

                child: const AppText('تأكيد')
            ),

          ],
        ),
      ),
    );
  }
}
