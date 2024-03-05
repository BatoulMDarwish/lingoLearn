import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lingo_learn/feature/favorait/presentation/page/favorait.dart';
import 'package:lingo_learn/feature/home/presentation/page/home.dart';
import '../../setting/presentation/page/setting.dart';
import '../../task/presentation/page/task.dart';
import 'navigation_state.dart';




class NavigationCubit extends Cubit<NavigationState> {
  static NavigationCubit get(context)=>BlocProvider.of(context);
  NavigationCubit() : super( const NavigationState(index: 0));

  List<Widget> bottomScreens = [
           HomeScreen(),
    TaskScreen(),
    FavoraitScreen(),
    SettingScreen(),

  ];

  //Change Bottom Navigation Bar state
  void changeBottom(int index){
    print('object');
    emit(NavigationState(
      index: index
    ));
  }
}