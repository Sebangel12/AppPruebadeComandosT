import 'package:firebase/app/domain/inputs/sing_up.dart';
import 'package:firebase/app/ui/globalwidgets/dialogs/dialogs.dart';
import 'package:firebase/app/ui/globalwidgets/dialogs/progress.dart';

import '../../../../domain/response/singupresponse.dart';
import '../registerpag.dart' show registerprovider;
import 'package:firebase/app/ui/rutes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_meedu/ui.dart';

// ignore: non_constant_identifier_names
Future<void> SendRegisForm (BuildContext context) async {
  final controler = registerprovider.read;
  final isValidForm = controler.formKey.currentState!.validate();

  if (isValidForm){
    ProgressDialog.show(context);
    final response = await controler.submit();
    router.pop();
  if (response.error!= null){
    
    late String content = "";
    switch(response.error){
      case SignUpError.emailAlreadyInUse:
        content = "El correo ya esta en uso";
        break;
      case SignUpError.weakPassword:
        content = "La contraseña es debil";
        break;
      case SignUpError.networkResquestFailed:
        content = "No hay conexión a internet";
        break;
      case SignUpError.unknown:
      default:
        content = "Unknown";
        break;
    }
    
    // ignore: use_build_context_synchronously
    Dialogs.alert(
      context,
      title:"ERROR",
      content: content,);
  }else {
    
    router.pushNamedAndRemoveUntil(Routes.LOGIN,);  
    //response.user;  
  }
  }else { 
    Dialogs.alert(context, title: "ERROR",content:"Complete los campos faltantes");
  }
}

