import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflix_app/Screen/BottomNavigation_Bar/bottom_navigation_bar.dart';

void main() {
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CustomNavigationBar(),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
