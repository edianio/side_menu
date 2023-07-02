import 'package:get_it/get_it.dart';
import 'package:side_menu/src/modules/service_locator_log_generator.dart';
import 'package:side_menu/src/modules/service_locator_pages.dart';

final GetIt getIt = GetIt.instance;

void serviceLocatorSetup() {
  serviceLocatorLogGenerator();
  serviceLocatorPages();
}