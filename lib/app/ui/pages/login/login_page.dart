
import 'package:firebase/app/ui/globalwidgets/inputfield.dart';
import 'package:firebase/app/ui/pages/login/utils/sendloginform.dart';
import 'package:firebase/app/utilites/emailvalidator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';
import '../../rutes/routes.dart';
import 'control/logincontrol.dart';
final LoginProvider = SimpleProvider(
  (_) => LoginControl(),
);

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final _controler = LoginProvider.read;

  @override
  Widget build(BuildContext context) {

    return  ProviderListener<LoginControl>(
      provider: LoginProvider,
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
          Container(
            padding: const EdgeInsets.only(left: 50, right: 50, top: 50, bottom: 10 ),
            child: const Image(image: AssetImage("assets/img/LogoEspe.png"),
            height: 100,
            width: 1000,)
            ),
          Center(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(), //ocultar el teclado
              child: Card(
                color: (const Color (0xFF3BACB6)),
                margin: const EdgeInsets.only(left: 20, right:20, top: 50,bottom: 50),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: Form(
                    key: _controler.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min, 
                      children: [           
                        InputField(
                          onChanged: controller.onEmailChange,
                          inputType: TextInputType.emailAddress,
                          validator: (text){
                            if(isValiEmail(text!)){
                              return null;
                            }return "Correo invalido";
                          }, 
                          label: "Correo Institucional", 
                          child: const Icon(Icons.mail),),
                          const SizedBox(height: 20,),
                        InputField(
                          onChanged: controller.onPassChange,
                          ispass: true,
                          validator: (text){
                            if (text!.trim().length>=6){
                              return null;
                            }return "Contraseña incorrecta";
                          }, 
                          label: "Contraseña",
                          child: const Icon(Icons.key)),
                      ],
                    ),
                  ),
                ),   
              ),
            ),
          ),
          
          // ignore: deprecated_member_use
          Center(
            // ignore: deprecated_member_use
            child: Column(
              children: [
                // ignore: deprecated_member_use
                RaisedButton( 
                  color: (const Color (0xFF3BACB6)),
                  padding: const EdgeInsets.symmetric(horizontal: 100),
                  textColor: Colors.black,                   
                  onPressed:()=>sendLoginForm(context),                  
                  child:
                  const Text('INICIAR SESION', style: TextStyle(fontSize: 15) ,),
                  
                ),
                const Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                        textStyle: const TextStyle(fontSize: 15),
                      ),
                      onPressed: (){}, 
                      child: const Text ("Olvide mi contraseña")
                      
                      ),
                    const SizedBox(height: 20,width: 10,),
                    // ignore: deprecated_member_use
                    RaisedButton(
                      color: (const Color (0xFF3BACB6)),
                      padding: const EdgeInsets.symmetric(horizontal: 60),
                      textColor: Colors.black,
                      onPressed: ()=> router.pushNamed(Routes.REGISTER,), 
                      child: const Text ('REGISTRARSE'),
              ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ); 
      },
    );

    
  }
}