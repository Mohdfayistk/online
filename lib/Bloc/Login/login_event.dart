part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}
class FetchloginEvent extends LoginEvent {
  final String username;
  final String password;
  FetchloginEvent(
      {required this.username,
        required this.password});
}