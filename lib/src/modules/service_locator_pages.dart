import 'package:flutter/material.dart';
import 'package:log_generator/log_generator.dart';
import 'package:side_menu/src/modules/service_locator_setup.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_bloc.dart';

void serviceLocatorPages() {
  getIt.registerSingleton<PagesBloc>(PagesBloc(PageController(), getIt<LogGenerator>()));
}