import 'package:firebase/app/ui/pages/Menu/menudoc.dart';
import 'package:firebase/app/ui/pages/login/login_page.dart';
import 'package:firebase/app/ui/pages/register/registerpag.dart';
import 'package:firebase/app/ui/pages/splash/splash_pages.dart';
import 'package:firebase/app/ui/rutes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart' show Widget, BuildContext;

Map<String, Widget Function(BuildContext)> get appRoutes =>{
  Routes.SPLASH:(_) => splashPages(), //pantalla cargadno
  Routes.LOGIN: (_) => LoginPage(), // pantalla login
  Routes.HOME:(_) => MenuDocente(),
  Routes.REGISTER: (_) => RegistroUsers(), //pantalla de registrp
};