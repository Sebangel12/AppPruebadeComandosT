import 'package:firebase/app/domain/inputs/sing_up.dart';
import 'package:firebase/app/domain/repositories/singuprepos.dart';
import 'package:firebase/app/domain/response/singupresponse.dart';
import 'package:firebase/app/ui/pages/register/control/regis_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_meedu/meedu.dart';

class RegistControl extends StateNotifier<RegisterState>{
  RegistControl() : super (RegisterState.initialState);
  final GlobalKey<FormState> formKey = GlobalKey();

  final _SingUpRepository = Get.find<SingUpRepository>();

  Future <SinUpResponse> submit(){
    return _SingUpRepository.register(SingUpData(
     name: state.name, 
     lastname: state.lastname, 
     email: state.mail, 
     pass: state.pass),);     
  }

  void onNamechange (String text){
    state = state.copyWith(name: text);
  }
  void onIDchange (String text){
    state = state.copyWith(lastname: text);
  }
  void onEmailchange (String text){
    state = state.copyWith(mail: text);
  }
  void onPasschange (String text){
    state = state.copyWith(pass: text);
  }
  void onVPasshange (String text){
    state = state.copyWith(vpass: text);
  }
}