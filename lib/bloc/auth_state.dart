part of 'auth_bloc.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthProcessing extends AuthState {}

class AuthProceed extends AuthState {
  String email;
  AuthProceed({required this.email});
}

class AuthFailed extends AuthState {}
