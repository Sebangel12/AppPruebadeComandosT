

import 'package:firebase/app/ui/pages/splash/splashcontroler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/meedu.dart';
import 'package:flutter_meedu/ui.dart';


final splashProvider = SimpleProvider((_) => splashcontroler(),
autoDispose: true);

    
class splashPages extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ProviderListener<splashcontroler>(
      provider: splashProvider, 
      onChange: (_, controler){
        final routeName = controler.routeName;
        if (routeName != null ){
          Navigator.pushReplacementNamed(context, routeName);
        }
        print("${controler.routeName}");
      },
      builder: (_,__){
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      });
  }
}