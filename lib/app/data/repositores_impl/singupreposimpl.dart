import 'package:firebase/app/domain/repositories/singuprepos.dart';
import 'package:firebase/app/domain/response/singupresponse.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../domain/inputs/sing_up.dart';

class SingUpReposImpl implements SingUpRepository{
 final FirebaseAuth _auth;
  SingUpReposImpl(this._auth);
  
  @override
  Future<SinUpResponse> register (SingUpData data) async {
  try{
    final userCredential = await _auth.createUserWithEmailAndPassword(
    email: data.email, 
    password: data.pass,
    );
    userCredential.user!.updateDisplayName(
      "${data.name} ${data.lastname}"
      );
    return SinUpResponse(null, userCredential.user!);
  } on FirebaseAuthException catch (e) {
    return SinUpResponse(parseStringToSignUpError(e.code), null);
  }
  }
}

