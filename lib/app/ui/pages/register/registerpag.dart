import 'package:firebase/app/ui/globalwidgets/inputfield.dart';
import 'package:firebase/app/ui/pages/register/control/regis_state.dart';
import 'package:firebase/app/ui/pages/register/control/registercontrol.dart';
import 'package:firebase/app/ui/pages/register/utils/sendregisform.dart';
import 'package:firebase/app/utilites/emailvalidator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';

import '../../../utilites/namevali.dart';
final registerprovider = StateProvider<RegistControl, RegisterState>(
  (_) => RegistControl()
);

class RegistroUsers extends StatelessWidget {
  RegistroUsers({Key? key}) : super(key: key);
  
  
  @override
  Widget build(BuildContext context) {
    return ProviderListener<RegistControl>(
      provider: registerprovider,
      builder: (_,controller){
        return Scaffold(
      backgroundColor: const Color(0xFF2F8F9D),
      appBar: AppBar(
        centerTitle: true ,
        title: const Text ('Prototipo Aplicación Movil y Web'),
        
      ),
      // ignore: deprecated_member_use
      body: ListView(
        children: <Widget> [
          Center(
            child: Card(
              color: (const Color (0xFF3BACB6)),
              margin: const EdgeInsets.only(left: 20, right:20, top: 50,bottom: 50),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Form(
                  key: controller.formKey,
                  child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  children: [  
                    //////////---Nombre y Apellido------/////////////////////        
                    InputField(
                      label: "Nombre y Apellido",
                      onChanged: controller.onNamechange,
                      validator: (text){
                        
                        return isValiName(text!)? null: "Nombre invalido";                        
                      },
                      child: const Icon(Icons.perm_identity)),

                    const SizedBox(height: 20,),
                    //////////---ID insitucional------/////////////////////
                    InputField(
                      label: "ID Institucional",
                      onChanged: controller.onIDchange,
                      validator: (text){
                        
                        return isId(text!)? null: "ID invalido";                        
                      },
                      child: const Icon(Icons.account_balance)),
                    
                    const SizedBox(height: 20,),
                    //////////---Correo------/////////////////////
                    InputField(
                      label: "Correo insitucional",
                      inputType: TextInputType.emailAddress,
                      onChanged: controller.onEmailchange,
                      validator: (text){
                        
                        return isValiEmail(text!)? null: "Correo invalido";                        
                      },
                      child: const Icon(Icons.mail)),
                    
                    const SizedBox(height: 20,),
                    //////////---Contraseña------/////////////////////
                    InputField(
                      label: "Contraseña",
                      onChanged: controller.onPasschange,                    
                      ispass: true,
                      validator: (text){
                        
                        if (text!.trim().length>=6){
                          return null;
                        }
                        return "Contraseña invalida";
                      },
                      child: const Icon(Icons.lock)),
                    
                    const SizedBox(height: 20,),
                    //////////---V Contraseña------/////////////////////
                    InputField(
                      label: "Verifique su contraseña",
                      onChanged: controller.onVPasshange,
                      ispass: true,
                      validator: (text){
                        
                        if(controller.state.pass!=text){
                          return "Contraseña no coincide";
                        }
                        if (text!.trim().length>=6){
                          return null;
                        }                    
                        return "Contraseña invalida";
                      },
                      child: const Icon(Icons.lock))
                  ],
                ),)
              ),   
            ),
          ),
          
          // ignore: deprecated_member_use
          Center(
            // ignore: deprecated_member_use
            child: Column(
              children: [             
                // ignore: deprecated_member_use
                CupertinoButton(
                  color: (const Color (0xFF3BACB6)),
                  padding: const EdgeInsets.symmetric(horizontal: 108),
                  //textColor: Colors.black,
                  onPressed: () => SendRegisForm(context),
                  child: const Text ('Registrarme', style: TextStyle(color: Colors.black),
                                   ),
                  
              ),
              ],//final GlobalKey<FormState> _formKey = GlobalKey();

            ),
          ),
        ],
      ),
    ); 
      },
    );
  }
}
