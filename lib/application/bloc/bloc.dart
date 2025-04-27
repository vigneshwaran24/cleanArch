import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(LogState()) {
    on<LogEvent>(fetchData);
  }
  fetchData(LogEvent event,  state) {}
}

abstract class AuthEvent {}

abstract class AuthState {}

class LogEvent extends AuthEvent {}

class LogState extends AuthState {}
