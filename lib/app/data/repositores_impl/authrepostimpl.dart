// ignore_for_file: camel_case_types

// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:firebase/app/domain/repositories/auth_repos.dart';
import 'package:firebase/app/domain/response/singinresponse.dart';
import 'package:firebase_auth/firebase_auth.dart';

class authreporimpl implements authrepor{
  
  final FirebaseAuth _auth;
  User? _user;

  final Completer<void> _completer = Completer();

  authreporimpl(this._auth){
    //print("♠");
    init();
  }

  @override
  Future<User?> get user async{
    await _completer.future;
    return _user;
  }
  
  void init () async{
    _auth.authStateChanges().listen(
      (User? user) {
        if(!_completer.isCompleted){
          _completer.complete();
        }
        _user = user;
       });
  }
  
  @override
  
  Future<void> SingOut() async {
   return _auth.signOut();
  }
  
  @override
  Future<SingInResponse> singinwithemailandpass(String email, String pass) async {
    
    try{
      final UserCredential = await _auth.signInWithEmailAndPassword(
        email: email, 
        password: pass);
        final user = UserCredential.user!;
        return SingInResponse(null, user);
    }on FirebaseAuthException catch(e){
      return SingInResponse(StringToSingInError(e.code), null);
    }
  }

}