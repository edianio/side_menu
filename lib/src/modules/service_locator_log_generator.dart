import 'package:log_generator/log_generator.dart';
import 'package:side_menu/src/modules/service_locator_setup.dart';

void serviceLocatorLogGenerator() {
  getIt.registerLazySingleton<LogGenerator>(() => LogGenerator());
}