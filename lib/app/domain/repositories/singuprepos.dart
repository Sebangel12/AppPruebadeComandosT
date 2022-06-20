import 'package:firebase/app/domain/inputs/sing_up.dart';
import 'package:firebase/app/domain/response/singupresponse.dart';

abstract class SingUpRepository {  
Future<SinUpResponse> register(SingUpData data);
}
