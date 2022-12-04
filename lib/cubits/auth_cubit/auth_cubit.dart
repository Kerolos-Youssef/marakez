import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marakez/cubits/auth_cubit/auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  static AuthCubit get(context) => BlocProvider.of(context);

  TextEditingController loginEmail = TextEditingController();
  TextEditingController loginPassword = TextEditingController();
  IconData loginPassIcon = Icons.visibility_sharp;
  void changePassVisibility() {
    loginPassIcon == Icons.visibility_sharp
        ? loginPassIcon = Icons.visibility_off_sharp
        : loginPassIcon = Icons.visibility_sharp;
    emit(ChangePasswordVisibilityState());
  }
}
