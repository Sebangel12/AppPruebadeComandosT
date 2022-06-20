
import 'package:firebase_auth/firebase_auth.dart';

class SinUpResponse {
  final SignUpError? error;
  final User? user;

  SinUpResponse(this.error, this.user);
}
parseStringToSignUpError(String text){
  switch (text){
    case "email-already-in-use":return SignUpError.emailAlreadyInUse;
    case "weak-password":return SignUpError.weakPassword;
    case "network-resquest-failed": return SignUpError.networkResquestFailed;
    default: return SignUpError.unknown;
  }
}
enum SignUpError{
  emailAlreadyInUse,weakPassword, unknown,networkResquestFailed
}