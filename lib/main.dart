import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intro/pages/home_details_page.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';
import 'package:intro/utils/routes.dart';
import 'package:intro/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get initialRoute => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: Mytheme.lightTheme(context),
        darkTheme: Mytheme.darkTheme(context),
        initialRoute: MyRoutes.loginRoute,
        debugShowCheckedModeBanner: false,
        routes:{
          "/":((context) => const LoginPage()),
          MyRoutes.homeRoute:(context) => const HomePage(),
          MyRoutes.loginRoute:((context) => const LoginPage()),
          // MyRoutes.detailsRoute:(context) => const HomeDetail()
        }, 
        );
  }
}
