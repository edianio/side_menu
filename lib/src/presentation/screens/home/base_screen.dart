import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_a.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_b.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_c.dart';
import 'package:side_menu/src/presentation/screens/home/home_screen.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_bloc.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_state.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({super.key});

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  late final PagesBloc bloc = BlocProvider.of<PagesBloc>(context);

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PagesBloc, PagesState>(
      bloc: bloc,
      builder: (context, state) {
        return PageView(
          controller: bloc.pageController,
          children: const [
            HomeScreen(),
            FakeScreenA(),
            FakeScreenB(),
            FakeScreenC(),
          ],
        );
      }
    );
  }
}
