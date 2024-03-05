// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:lingo_learn/core/config/theme/colors_app.dart';
//
// class ButtonSliderOnBoarding extends StatelessWidget {
//   ButtonSliderOnBoarding({Key? key, this.goToLogin = false}) : super(key: key);
//
//   bool goToLogin = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return RSizedBox(
//       width: 75,
//       height: 75,
//       child: FloatingActionButton(
//           backgroundColor: AppColors.primary,
//           onPressed: () {
//             if (goToLogin) {
//               Navigator.of(context).push(MaterialPageRoute(
//                 builder: (context) => SignInScreen(),
//               ));
//             } else {
//               OnBoardingCubit.get(context).next(context);
//             }
//           },
//           child: Icon(
//             Icons.arrow_back_outlined,
//             size: 35,
//           )),
//     );
//   }
// }