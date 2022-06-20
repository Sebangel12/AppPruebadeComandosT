import 'package:firebase/app/domain/repositories/auth_repos.dart';

SingInError StringToSingInError(String code){
  switch(code){
    case "user-disabled": return SingInError.userDisabled;
    case "user-not-found": return SingInError.userNotFound;
    case "wrong-password": return SingInError.wrongPassword;
    case "network-resquest-failed": return SingInError.networkResquestFailed;
    default: return SingInError.unknown;
  }
}