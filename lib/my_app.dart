import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';

import 'screens/large_screen.dart';
import 'screens/medium_screen.dart';
import 'screens/small_screen.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: width < SMALL_SCREEN
          ? const SmallScreen()
          : width < MEDIUM_SCREEN
              ? const MediumScreen()
              : const LargeScreen(),
    );
  }
}
