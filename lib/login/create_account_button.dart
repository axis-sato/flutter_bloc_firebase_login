import 'package:flutter/material.dart';
import 'package:flutter_bloc_firebase_login/register/bloc/register_screen.dart';
import 'package:flutter_bloc_firebase_login/user_repository.dart';

class CreateAccountButton extends StatelessWidget {
  final UserRepository _userRepository;

  CreateAccountButton({Key key, @required UserRepository userRepository})
      : assert(userRepository != null),
        _userRepository = userRepository,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) {
            return RegisterScreen(userRepository: _userRepository);
          }),
        );
      },
      child: Text('Create an Account'),
    );
  }
}
