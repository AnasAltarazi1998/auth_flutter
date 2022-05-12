import 'package:bloc/bloc.dart';
import 'package:login_example/services/auth_service.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthService authService = AuthService();
  AuthBloc() : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(AuthProcessing());
      bool result =
          await authService.login(email: event.email, password: event.password);
      if (result) {
        emit(AuthProceed(email: event.email));
      } else {
        emit(AuthFailed());
      }
    });
  }
}
