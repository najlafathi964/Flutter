import 'package:course/medules/hotel/hotel_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'medules/hotel/hotel_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      minTextAdapt: false,
      builder: (context,child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Course',
          theme: ThemeData(

            primarySwatch: Colors.blue,
          ),
          home:  HotalHomePage(),
        );
      }
    );
  }
}
