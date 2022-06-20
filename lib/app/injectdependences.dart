
import 'package:firebase/app/data/repositores_impl/authrepostimpl.dart';
import 'package:firebase/app/data/repositores_impl/singupreposimpl.dart';
import 'package:firebase/app/domain/repositories/auth_repos.dart';
import 'package:firebase/app/domain/repositories/singuprepos.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_meedu/meedu.dart';


void injectdependences (){
  Get.lazyPut<authrepor>( () =>
    authreporimpl(FirebaseAuth.instance),);
  Get.lazyPut<SingUpRepository>( () =>
    SingUpReposImpl(FirebaseAuth.instance),);
  
}