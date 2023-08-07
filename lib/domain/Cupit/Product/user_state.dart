part of 'user_cubit.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}
class CheckUserLoading extends UserState
{
}
class CheckUserSuccess extends UserState
{
  List User;
  CheckUserSuccess(this.User);

}
class CheckUserFailed extends UserState
{
  String? msg;
  CheckUserFailed(this.msg);
}
class CreateUserSuccess extends UserState
{
  List User;
  CreateUserSuccess(this.User);

}
class CreateUserFailed extends UserState
{
  String? msg;
  CreateUserFailed(this.msg);
}


