import 'package:flutter/material.dart';
import 'package:side_menu/src/presentation/main/app_generated_route.dart';
import 'package:side_menu/src/presentation/screens/home/home_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo /,,/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/root',
      onGenerateRoute: AppGeneratedRoute.route,
      home: const HomeScreen(),
    );
  }
}