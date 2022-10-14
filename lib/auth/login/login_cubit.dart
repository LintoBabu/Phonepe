import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:phonepenew/Model/loginModel.dart';
import 'package:phonepenew/auth/login/loginRepo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final loginRepo objloginRepo;
  LoginCubit(this.objloginRepo) : super(LoginInitial());

  Future<void> login()async{
    loginModel? objlogin;
    emit(LoginLoading());
     objlogin = await objloginRepo.login();
    if (objlogin.status==true){
      emit(LoginSuccess(objlogin));
    }
    else{
      emit(LoginFail(objlogin.message!));
    }
  }
}
