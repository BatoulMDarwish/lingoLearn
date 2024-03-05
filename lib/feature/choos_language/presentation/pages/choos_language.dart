import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_text_field.dart';
import 'package:lingo_learn/feature/choos_language/presentation/widget/choose_language_card.dart';
import 'package:lingo_learn/feature/route/page/Route.dart';

class ChooseLanguage extends StatelessWidget {
  const ChooseLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: REdgeInsetsDirectional.only(top: 53,start: 18,end: 18),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText('اختر اللغة التي سوف تبدأ بتعلمها',style: context.textTheme.titleLarge,),
             10.verticalSpace,
             AppTextField(name: '',hintText: 'بحث ...',prefixIcon: Icon(Icons.search,color: context.colorScheme.primary,)) ,
             20.verticalSpace,
             Expanded (child:
             GridView.builder(
               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 childAspectRatio: 1/1,
                 crossAxisSpacing: 4,
                 mainAxisSpacing: 2
               ),
               itemBuilder: (context, index) => ChooseLanguageCard(),itemCount: 5,)),
              10.verticalSpace,

              Padding(
                padding: REdgeInsetsDirectional.only(start: 20,end: 20),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                }, child: AppText('التالي')),
              ),
              20.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
