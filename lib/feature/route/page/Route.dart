
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lingo_learn/core/config/theme/colors_app.dart';
import 'package:lingo_learn/core/utils/extensions/build_context.dart';
import 'package:lingo_learn/feature/app/presentation/widgets/app_scaffold.dart';
import 'package:lingo_learn/feature/route/manager/navigation_cubit.dart';
import 'package:lingo_learn/feature/route/manager/navigation_state.dart';



//! This code for bottom nav bar
class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return true;
      },
      child: BlocProvider(
          create: (context) => NavigationCubit(),
         child: BlocBuilder<NavigationCubit, NavigationState>(
        builder: (context, state) {
          return AppScaffold(
              body: NavigationCubit.get(context).bottomScreens[state.index],
              bottomNavigationBar: ClipRRect(
                borderRadius: BorderRadiusDirectional.only(topStart: Radius.circular(20.r), topEnd: Radius.circular(20.r)),
                child: SizedBox(
                  height: 100.h,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: BottomNavigationBar(
                      elevation: 2,
                      showUnselectedLabels: true,
                      unselectedItemColor: AppColors.grey.shade600,
                      onTap: (index) {
                        NavigationCubit.get(context).changeBottom(index);
                      },
                      currentIndex: state.index,
                      items: [

                        BottomNavigationBarItem(
                          backgroundColor: context.colorScheme.onPrimary,
                          icon: Icon(Icons.home_outlined, color:context.colorScheme.primary.withOpacity(.3), size: 35.r),
                          label: "الرئيسية",
                          activeIcon: Icon(Icons.home_outlined, color: context.colorScheme.primary, size: 35.r),
                        ),
                      BottomNavigationBarItem(
                  backgroundColor: context.colorScheme.onPrimary,
                      icon: Icon(Icons.star_rate_sharp, color: context.colorScheme.primary.withOpacity(.3), size: 35.r),
                label: 'المسابقات',
                activeIcon: Icon(Icons.star_rate_sharp, color:context.colorScheme.primary, size: 35.r),
              ),
                      BottomNavigationBarItem(
                        backgroundColor: context.colorScheme.onPrimary,
                        icon: Icon(Icons.favorite_border,color:  context.colorScheme.primary.withOpacity(.3), size: 35.r),
                        label: 'المفضلة',
                        activeIcon: Icon(Icons.favorite_border, color: context.colorScheme.primary, size: 35.r),
                      ),
                        BottomNavigationBarItem(
                          backgroundColor: context.colorScheme.onPrimary,
                          icon: Icon(Icons.settings, color:context.colorScheme.primary.withOpacity(.3), size: 35.r),
                          label: 'الإعدادات',
                          activeIcon: Icon(Icons.settings, color: context.colorScheme.primary, size: 35.r),
                        ),
                      ],
                    ),
                  ),
                ),
              ));
        },
      ),
),
    );
  }
}
