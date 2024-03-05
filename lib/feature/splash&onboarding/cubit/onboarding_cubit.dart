import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lingo_learn/feature/splash&onboarding/cubit/onboarding_state.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingState());

  static OnBoardingCubit get(context) => BlocProvider.of(context);

  late PageController pageController = PageController();

  void next(context) {
    emit(OnBoardingState());


    pageController.nextPage(
      duration: const Duration(
        milliseconds: 750,
      ),
      curve:Curves.fastLinearToSlowEaseIn ,
    );
  }


  void onPageChanged(int index) {
    emit(OnBoardingState(currentPage:index));
  }
}