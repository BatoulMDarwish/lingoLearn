import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import'package:lingo_learn/feature/splash&onboarding/page/splash_page.dart';
import 'package:lingo_learn/services/language_service.dart';
import '../../../../common/constants/constants.dart';
import '../../../../core/config/theme/app_theme.dart';
import '../../../../services/service_provider.dart';
import '../bloc/app_manager_cubit.dart';

class App extends StatelessWidget {
  const App({super.key});
  static final GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: designSize,
      builder: (context, child) => GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: FocusManager.instance.primaryFocus?.unfocus,
        child: ServiceProvider(
          child: BlocBuilder<AppManagerCubit, AppManagerState>(
            builder: (context, state) {
              LanguageService(context);
              return MaterialApp(
                title: "Lingo Learn",
                debugShowCheckedModeBanner: false,
                home:SplashPage(),
                theme: AppTheme.dark(context),
                locale: context.locale,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
              );
            },
          ),
        ),
      ),
    );
  }
}
