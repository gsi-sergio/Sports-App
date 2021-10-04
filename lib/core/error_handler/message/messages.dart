import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:the_game_app/core/i18n/index.dart';

enum MessageType {
  error,
  warning,
  info,
  success
}

abstract class IMessage {
  MessageType get type;
  String get title;
  String get body;
}

class BadCredentials extends Equatable implements IMessage {
  
  const BadCredentials();

  @override
  MessageType get type => MessageType.error;

  @override
  String get body => 'The email or password is incorrect.';

  @override
  String get title => 'Sign in';

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is BadCredentials;

  @override
  // ignore: unnecessary_overrides
  int get hashCode =>
    super.hashCode;

  @override
  List<Object> get props => [body, title, type];
}

class InternetConnection extends Equatable implements IMessage {
  @override
  MessageType get type => MessageType.warning;

  @override
  String get body => 'This option requires an Internet connection. '
      'Verify your connection status.';

  @override
  String get title => 'Internet connection';

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is InternetConnection;

  @override
  // ignore: unnecessary_overrides
  int get hashCode =>
    super.hashCode;

  @override
  List<Object> get props => [body, title, type];

}

class SignUpPersonalInformationServerFails implements IMessage {
  @override
  MessageType get type => MessageType.error;

  @override
  String get body =>  'This email has already been taken.\n'
                      'This number has already been taken.';

  @override
  String get title => 'Sign up';


  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
    other is SignUpPersonalInformationServerFails;

  @override
  int get hashCode =>
    super.hashCode;
}

class GenericServerFails implements IMessage {
  @override
  MessageType get type => MessageType.error;

  @override
  String get body => I18nKeys.notAbleToDo.tr;

  @override
  String get title => I18nKeys.warning.tr;

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
  other is GenericServerFails;

  @override
  int get hashCode =>
    super.hashCode;
}

class SignUpEmailTakenFails implements IMessage {
  @override
  MessageType get type => MessageType.error;

  @override
  String get body => 'This email has already been taken.';

  @override
  String get title => 'Sign Up';
}

class SignUpPhoneTakenFails implements IMessage {
  @override
  MessageType get type => MessageType.error;

  @override
  String get body => 'This number has already been taken.';

  @override
  String get title => 'Sign Up';
}

class ErrorMessage implements IMessage {
  ErrorMessage(
    this._body,
    this._title
  );
  // final String _body;
  final String? _title;
  final String? _body;

  @override
  String get title => _title ?? 'Warning';

  @override
  MessageType get type => MessageType.error;

  @override
  String get body => _body ?? I18nKeys.notAbleToDo.tr;
}

class WarningMessage implements IMessage {
  WarningMessage(
    this._body,
    this._title
  );
  final String _body;
  final String _title;

  @override
  String get title => _title;

  @override
  MessageType get type => MessageType.warning;

  @override
  String get body => _body;
}

///For dev

class OTPVerifyNotify extends IMessage {
    @override
  MessageType get type => MessageType.info;

  @override
  String get body => 'In Dev/QA use code 1234 for OTPs.';

  @override
  String get title => 'Hey Ninja!';

}

class SuccessMessage implements IMessage {
  SuccessMessage(
    this._body,
    this._title
  );
  final String _body;
  final String _title;

  @override
  String get title => _title;

  @override
  MessageType get type => MessageType.success;

  @override
  String get body => _body;
}

class InfoMessage implements IMessage {
  InfoMessage(
    this._body,
    this._title
  );
  final String _body;
  final String _title;

  @override
  String get title => _title;

  @override
  MessageType get type => MessageType.info;

  @override
  String get body => _body;
}