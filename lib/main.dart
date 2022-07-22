import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:get/get.dart';
import 'package:newkings/view/screens/signinpage/screen1_log.dart';

import 'controller/cubit/bottom_nav_cubit.dart';

void main() {
  runApp(const MyAp());
}

class MyAp extends StatelessWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BottomNavCubit(),
        )
      ],
      child: GetMaterialApp(
          debugShowCheckedModeBanner: false, home: LogInScreen()),
    );

    //   BlocProvider(
    //     create: (context) => BottomNavCubit(),
    //     child: const
    //   ),
    // );
  }
}
