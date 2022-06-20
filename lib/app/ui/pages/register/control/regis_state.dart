import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'regis_state.freezed.dart';


@freezed

class RegisterState with _$RegisterState {

  const factory RegisterState ({
    @Default('') String name,
    @Default('') String lastname,
    @Default('') String mail,
    @Default('') String pass,
    @Default('') String vpass,
    @Default(false) bool termOk,

  }) = _RegisterState;

  static RegisterState get initialState => RegisterState();
}