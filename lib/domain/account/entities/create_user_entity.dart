import 'package:equatable/equatable.dart';

class CreateUserEntity extends Equatable {
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? username;
  final String? phone;
  final String? password;

  const CreateUserEntity(
      {this.password,
      this.phone,
      this.username,
      this.firstName,
      this.lastName,
      this.email});

  CreateUserEntity copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? password,
    String? phone,
    String? username,
  }) =>
      CreateUserEntity(
          firstName: firstName ?? this.firstName,
          lastName: lastName ?? this.lastName,
          email: email ?? this.email,
          phone: phone ?? this.phone,
          password: password ?? this.password,
          username: username ?? this.username,
          );

  @override
  List<Object?> get props => [
        firstName,
        lastName,
        email,
        password,
        phone,
        username,
      ];
}
