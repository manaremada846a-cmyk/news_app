import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/theme/app_theme.dart';
import 'package:flutter_application_1/screens/main_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: Size(393, 852),
      minTextAdapt: true,
      splitScreenMode: true,
     builder: (context, child) {
       return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        themeMode:ThemeMode.dark,
        darkTheme: AppTheme.lightTheme,
        home: MainScreen(),
       );
     },
     );
  }
}
