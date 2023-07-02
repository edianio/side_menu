import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_bloc.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_event.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  late final PagesBloc bloc = context.read<PagesBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                bloc.add(ChangePageEvent(0));
              },
            ),
            ListTile(
              title: const Text('Fake Screen A'),
              onTap: () {
                bloc.add(ChangePageEvent(1));
              },
            ),
            ListTile(
              title: const Text('Fake Screen B'),
              onTap: () {
                bloc.add(ChangePageEvent(2));
              },
            ),
            ListTile(
              title: const Text('Fake Screen C'),
              onTap: () {
                bloc.add(ChangePageEvent(3));
              },
            ),
          ],
        ),
      ),
    );
  }
}
