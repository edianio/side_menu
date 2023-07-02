import 'package:flutter/material.dart';
import 'package:side_menu/src/presentation/screens/menu/menu_drawer.dart';

class FakeScreenB extends StatelessWidget {
  const FakeScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MenuDrawer(),
      appBar: AppBar(
        title: const Text('Fake Screen B'),
      ),
      body: const Center(
        child: Text('Fake Screen B'),
      ),
    );
  }
}
