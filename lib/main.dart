import 'package:flutter/material.dart';
import 'package:resume/app/size_config/config.dart';
import 'package:resume/app/themes.dart';
import 'package:resume/view/auth/login.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     SizeConfig.init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Abdullahi Lateef',
        theme: Styles.lightThemeData(context),
        darkTheme: Styles.darkThemeData(context),
        themeMode: ThemeMode.dark,
        home: Scaffold(
          body: LoginScreen(),
        ));
  }
}
