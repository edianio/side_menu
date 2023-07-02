import 'package:flutter/material.dart';
import 'package:side_menu/src/presentation/screens/menu/menu_drawer.dart';

class FakeScreenC extends StatelessWidget {
  const FakeScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text('Fake Screen C'),
      ),
      body: const Center(
        child: Text('Fake Screen C'),
      ),
    );
  }
}
