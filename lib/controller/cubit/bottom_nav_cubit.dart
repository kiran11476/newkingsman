import 'package:bloc/bloc.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<Bottombutton> {
  BottomNavCubit() : super(BottomNavInitial());
  void index(int index) => emit(Bottombutton(currentindex: index));
}
// import 'package:flutter/material.dart';

// class Counter extends ChangeNotifier {
//   var _pageindex = 0;

//   int get pageindex => _pageindex;

//   navpage(index) {
//     _pageindex = index;
//   }
// }
