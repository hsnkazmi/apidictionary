import 'package:apidictionary/contants/appstrings.dart';
import 'package:apidictionary/ui/screens/landingpage.dart';
import 'package:apidictionary/ui/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: customtheme,
        home: const LandingPage(title: AppStrings.appbar));
  }
}
