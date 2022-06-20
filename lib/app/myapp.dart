import 'package:firebase/app/ui/rutes/app_routes.dart';
import 'package:firebase/app/ui/rutes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Auth',
      navigatorKey: router.navigatorKey,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.SPLASH,
      navigatorObservers: [
        router.observer,
      ],
      routes: appRoutes,
    );
  }
}