
import 'package:course/medules/routes/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: false,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
         home:  FirstScreen(),
        //  initialRoute: '/firstScreen',
        //  routes: {
        //    '/firstScreen' : (context)=>FirstScreen() ,
        //    '/secondScreen' : (context) => SecondScreen(),
        //    '/thirdScreen' : (context) => ThirdScreen(),
        //  },
        );
      }
    );
  }
}
