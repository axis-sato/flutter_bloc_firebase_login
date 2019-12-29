import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_firebase_login/authentication_bloc/authentication_bloc.dart';
import 'package:flutter_bloc_firebase_login/authentication_bloc/authentication_event.dart';
import 'package:flutter_bloc_firebase_login/authentication_bloc/authentication_state.dart';
import 'package:flutter_bloc_firebase_login/simple_bloc_delegate.dart';
import 'package:flutter_bloc_firebase_login/user_repository.dart';
import 'package:bloc/bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();
  runApp(
    BlocProvider(
      create: (context) =>
          AuthenticationBloc(userRepository: userRepository)..add(AppStarted()),
      child: App(
        userRepository: userRepository,
      ),
    ),
  );
}

class App extends StatelessWidget {
  final UserRepository _userRepository;

  App({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          return Container();
        },
      ),
    );
  }
}
