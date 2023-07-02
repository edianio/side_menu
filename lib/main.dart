import 'package:flutter/material.dart';
import 'package:side_menu/src/modules/service_locator_setup.dart';
import 'package:side_menu/src/presentation/main/app_widget.dart';

void main() {
  serviceLocatorSetup();

  runApp(const AppWidget());
}
