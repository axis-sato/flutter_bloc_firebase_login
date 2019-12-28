import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class Uninitialized extends AuthenticationEvent {}

class Authenticated extends AuthenticationEvent {
  final String displayName;

  const Authenticated({this.displayName});

  @override
  List<Object> get props => [displayName];

  @override
  String toString() => 'Authenticated { displayName: $displayName }';
}

class Unauthenticated extends AuthenticationEvent {}
