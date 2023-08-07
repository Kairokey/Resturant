import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:training/data/Api/Api.dart';
import 'package:training/domain/Cupit/Product/product_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());
  static UserCubit get(context) => BlocProvider.of(context);
  // Connectivity connectivity = Connectivity();

 CheckUser(dataModel) {
    emit(CheckUserLoading());

    Api()
        .getHttp(url: 'is-available',data: dataModel)
        .then((value) => {
      print('..................................'),
      print(value),
      emit(CheckUserSuccess(value)),
      print('Get My Product Response'),
    })
        .onError((error, stackTrace) => {
      emit(CheckUserFailed(error.toString())),
      print(error),
    });
  }
  CreateUser(dataModel) {
    emit(CheckUserLoading());

    Api()
        .postHttp(url: 'users',data: dataModel.toJson())
        .then((value) => {
      print('..................................'),
      print(value),
      emit(CreateUserSuccess(value)),
      print('Get My Product Response'),
    })
        .onError((error, stackTrace) => {
      emit(CreateUserFailed(error.toString())),
      print(error),
    });
  }
}
