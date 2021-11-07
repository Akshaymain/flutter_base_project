import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/routes/constants/route_names.dart';
import 'package:flutter_base_project/routes/app_router.dart';
import 'package:flutter_base_project/screens/intro/intro_screen.dart';
import 'package:flutter_base_project/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: APP_TITLE,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.data,
      home: const IntroScreen(),
      initialRoute: INITIAL_ROUTE,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}
