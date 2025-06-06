import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:personal_portofolio/daycode/app/main_container/bindings.dart';
import 'package:personal_portofolio/daycode/app/main_container/main_container_screen.dart';
import 'package:personal_portofolio/daycode/core/theme/daycode/daycode_theme.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1280, 720),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (ctx, child){
        final theme = ThemeData(useMaterial3: true);
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Daily Dose of Code - Rizky',
          theme: DaycodeTheme.light(theme, ctx),
          darkTheme: DaycodeTheme.dark(theme, ctx),
          themeMode: ThemeMode.light,
          home: child,
          initialBinding: MainContainerBinding(),
          builder: (context, child) {
            DaycodeTheme.instance.init(context);
            return child!;
          },
        );
      },
      child: MainContainerScreen(),
    );
  }
}