import 'package:flower_app/core/routes/app_routes.dart';
import 'package:flower_app/core/routes/routes.dart';
import 'package:flower_app/core/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        home: child,
        navigatorObservers: [routeObserver],
        onGenerateRoute: AppRoutes.generateRoute,
        initialRoute: Routes.mainLayout,
      ),
    );
  }
}
