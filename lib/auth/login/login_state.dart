part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class LoginLoading extends LoginState{}
class LoginSuccess extends LoginState{
  final loginModel? objlogin;

  LoginSuccess(this.objlogin);
}
class LoginFail extends LoginState{
  final String errorMessage;

  LoginFail(this.errorMessage);
}

