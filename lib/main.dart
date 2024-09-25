import 'package:flutter/material.dart';
import 'pages/colors/blue_page.dart';
import 'pages/colors/green_page.dart';
import 'pages/colors/home.dart';
import 'pages/colors/orange_page.dart';
import 'pages/colors/red_page.dart';
import 'pages/responsive/responsive_home.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Application',
      debugShowCheckedModeBanner: false,
      // initialRoute: Home.route,
      initialRoute: ResponsiveHome.route,
      routes: {
        // Home.route: (_) => const Home(),
        ResponsiveHome.route: (_) => const ResponsiveHome(),
        BluePage.route: (_) => const BluePage(),
        RedPage.route: (_) => const RedPage(),
        GreenPage.route: (_) => const GreenPage(),
        OrangePage.route: (_) => const OrangePage(),
      },
    );
  }
}
