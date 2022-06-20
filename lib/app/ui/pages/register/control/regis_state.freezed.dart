// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'regis_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  String get name => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get mail => throw _privateConstructorUsedError;
  String get pass => throw _privateConstructorUsedError;
  String get vpass => throw _privateConstructorUsedError;
  bool get termOk => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String lastname,
      String mail,
      String pass,
      String vpass,
      bool termOk});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastname = freezed,
    Object? mail = freezed,
    Object? pass = freezed,
    Object? vpass = freezed,
    Object? termOk = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
      vpass: vpass == freezed
          ? _value.vpass
          : vpass // ignore: cast_nullable_to_non_nullable
              as String,
      termOk: termOk == freezed
          ? _value.termOk
          : termOk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$_RegisterStateCopyWith(
          _$_RegisterState value, $Res Function(_$_RegisterState) then) =
      __$$_RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name,
      String lastname,
      String mail,
      String pass,
      String vpass,
      bool termOk});
}

/// @nodoc
class __$$_RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$$_RegisterStateCopyWith<$Res> {
  __$$_RegisterStateCopyWithImpl(
      _$_RegisterState _value, $Res Function(_$_RegisterState) _then)
      : super(_value, (v) => _then(v as _$_RegisterState));

  @override
  _$_RegisterState get _value => super._value as _$_RegisterState;

  @override
  $Res call({
    Object? name = freezed,
    Object? lastname = freezed,
    Object? mail = freezed,
    Object? pass = freezed,
    Object? vpass = freezed,
    Object? termOk = freezed,
  }) {
    return _then(_$_RegisterState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastname: lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      mail: mail == freezed
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      pass: pass == freezed
          ? _value.pass
          : pass // ignore: cast_nullable_to_non_nullable
              as String,
      vpass: vpass == freezed
          ? _value.vpass
          : vpass // ignore: cast_nullable_to_non_nullable
              as String,
      termOk: termOk == freezed
          ? _value.termOk
          : termOk // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterState with DiagnosticableTreeMixin implements _RegisterState {
  const _$_RegisterState(
      {this.name = '',
      this.lastname = '',
      this.mail = '',
      this.pass = '',
      this.vpass = '',
      this.termOk = false});

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String lastname;
  @override
  @JsonKey()
  final String mail;
  @override
  @JsonKey()
  final String pass;
  @override
  @JsonKey()
  final String vpass;
  @override
  @JsonKey()
  final bool termOk;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RegisterState(name: $name, lastname: $lastname, mail: $mail, pass: $pass, vpass: $vpass, termOk: $termOk)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RegisterState'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('lastname', lastname))
      ..add(DiagnosticsProperty('mail', mail))
      ..add(DiagnosticsProperty('pass', pass))
      ..add(DiagnosticsProperty('vpass', vpass))
      ..add(DiagnosticsProperty('termOk', termOk));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegisterState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.lastname, lastname) &&
            const DeepCollectionEquality().equals(other.mail, mail) &&
            const DeepCollectionEquality().equals(other.pass, pass) &&
            const DeepCollectionEquality().equals(other.vpass, vpass) &&
            const DeepCollectionEquality().equals(other.termOk, termOk));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(lastname),
      const DeepCollectionEquality().hash(mail),
      const DeepCollectionEquality().hash(pass),
      const DeepCollectionEquality().hash(vpass),
      const DeepCollectionEquality().hash(termOk));

  @JsonKey(ignore: true)
  @override
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      __$$_RegisterStateCopyWithImpl<_$_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {final String name,
      final String lastname,
      final String mail,
      final String pass,
      final String vpass,
      final bool termOk}) = _$_RegisterState;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get lastname => throw _privateConstructorUsedError;
  @override
  String get mail => throw _privateConstructorUsedError;
  @override
  String get pass => throw _privateConstructorUsedError;
  @override
  String get vpass => throw _privateConstructorUsedError;
  @override
  bool get termOk => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterStateCopyWith<_$_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
