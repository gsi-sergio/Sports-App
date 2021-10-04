import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String phone;
  final DateTime? dateOfBirth;
  final String username;
  final bool keepMeSigned;

  const UserEntity(
      {required this.id,
      this.firstName,
      this.lastName,
      this.email,
      required this.username,
      required this.phone,
      this.dateOfBirth,
      this.keepMeSigned = true});

  UserEntity copyWith({
    int? id,
    String? firstName,
    String? lastName,
    String? email,
    String? username,
    String? phone,
    bool? keepMeSigned,
  }) {
    return UserEntity(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      username: username ?? this.username,
      phone: phone ?? this.phone,
      keepMeSigned: keepMeSigned ?? this.keepMeSigned,
    );
  }

  @override
  List<Object> get props => [id, phone,username, keepMeSigned];
}
