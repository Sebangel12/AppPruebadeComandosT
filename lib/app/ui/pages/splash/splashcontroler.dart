

import 'package:firebase/app/domain/repositories/auth_repos.dart';
import 'package:firebase/app/ui/rutes/routes.dart';
import 'package:flutter_meedu/meedu.dart';

class splashcontroler extends SimpleNotifier{
  final _authrepository = Get.find<authrepor>();

  String? _routeName;
  String? get routeName => _routeName;

  splashcontroler(){
      _init();
    }

  void _init () async{
    final user = await _authrepository.user; //si hay un user autentiticado va a "login" si no a register
    _routeName = user != null? Routes.HOME : Routes.LOGIN;
    notify();
  }

 
}