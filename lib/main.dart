import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newkings/view/screens/signinpage/screen1_log.dart';
import 'package:provider/provider.dart';

import 'controller/eamil/bottom_nav_cubit.dart';

void main() async {
  runApp(const MyAp());
}

class MyAp extends StatelessWidget {
  const MyAp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => Counter(),
        ),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: LogInScreen(),
      ),
    );

    //   BlocProvider(
    //     create: (context) => BottomNavCubit(),
    //     child: const
    //   ),
    // );
  }
}
