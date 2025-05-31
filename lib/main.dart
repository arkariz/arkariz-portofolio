import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:personal_portofolio/daycode/app/main_container/bindings.dart';
import 'package:personal_portofolio/daycode/app/main_container/main_container_screen.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';

// TODO HANDLE RESPONSIVENESS

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      designSize: const Size(1920, 1080),
      builder: (_, child){
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Daily Dose of Code - Rizky',
          theme: DaycodeTheme.light,
          darkTheme: DaycodeTheme.dark,
          themeMode: ThemeMode.light,
          home: MainContainerScreen(),
          initialBinding: MainContainerBinding(),
          builder: (context, child) {
            DaycodeTheme.instance.init(context);
            return child!;
          },
        );
      },
    );
  }
}