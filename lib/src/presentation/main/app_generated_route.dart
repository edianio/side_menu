import 'package:flutter/material.dart';
import 'package:side_menu/src/presentation/screens/dependencies/screen_dependencies.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_a.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_b.dart';
import 'package:side_menu/src/presentation/screens/fakes/fake_screen_c.dart';
import 'package:side_menu/src/presentation/screens/home/base_screen_dependencies.dart';
import 'package:side_menu/src/presentation/screens/home/home_screen.dart';
import 'package:side_menu/src/utils/app_const.dart';

class AppGeneratedRoute {
  static Route<dynamic> route(RouteSettings settings) {
    switch (settings.name) {
      case PageConst.root:
        return MaterialPageRoute<ScreenDependencies>(
          builder: (context) => BaseScreenDependencies().buildScreen(context),
          settings: settings,
        );
      case PageConst.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
          settings: settings,
        );
      case PageConst.fakeA:
        return MaterialPageRoute(
          builder: (context) => const FakeScreenA(),
          settings: settings,
        );
        case PageConst.fakeB:
        return MaterialPageRoute(
          builder: (context) => const FakeScreenB(),
          settings: settings,
        );
        case PageConst.fakeC:
        return MaterialPageRoute(
          builder: (context) => const FakeScreenC(),
          settings: settings,
        );
      default:
        return materialBuilder(widget: const ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const text = 'Page not found';

    return Scaffold(
      appBar: AppBar(
        title: const Text(text),
      ),
      body: Center(
        child: Card(
          elevation: 1,
          margin: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRRect(
                  child: Icon(
                    Icons.warning_rounded,
                    size: 64,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(text),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

MaterialPageRoute materialBuilder({required Widget widget}) {
  return MaterialPageRoute(builder: (_) => widget);
}