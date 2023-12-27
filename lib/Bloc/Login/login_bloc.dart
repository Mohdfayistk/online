import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/login/Api.dart';
import '../../Repository/Modelclass/login.dart';


part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late Login loginModel;
  LoginApi loginApi=LoginApi();
  LoginBloc() : super(LoginInitial()) {
    on<FetchloginEvent>((event, emit) async{
      emit(LoginBlocLoading());
      try{

        loginModel = await loginApi.getLogin(event.username,event.password);
        emit(LoginBlocLoaded());
      } catch(e){
        print(e);
        emit(LoginBlocError());}
    });
  }
}
