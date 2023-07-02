import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:side_menu/src/modules/service_locator_setup.dart';
import 'package:side_menu/src/presentation/screens/dependencies/screen_dependencies.dart';
import 'package:side_menu/src/presentation/screens/home/base_screen.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_bloc.dart';

class BaseScreenDependencies extends ScreenDependencies{
  @override
  Widget buildScreen(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PagesBloc>(create: (context) => getIt<PagesBloc>()),
      ],
      child: const BaseScreen(),
    );
  }
}