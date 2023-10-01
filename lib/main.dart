import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:personal_portofolio/app/sections/bindings.dart';
import 'package:personal_portofolio/app/sections/main_container/main_container_screen.dart';
import 'package:personal_portofolio/core/theme/theme.dart';

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
          title: 'Flutter Demo',
          theme: AppTheme.themeData(true, context),
          home: const MainContainerScreen(),
          initialBinding: MainContainerBinding(),
        );
      },
    );
  }
}