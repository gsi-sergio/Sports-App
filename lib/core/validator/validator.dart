import 'package:get/get.dart';
import 'package:the_game_app/core/i18n/index.dart';

mixin KhaleesiValidator {
  static final RegExp _emailRegExp = RegExp(
    r'^[a-zA-Z0-9._]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$',
  );

  static final RegExp _onlyLetterAndNumberRegExp = RegExp(
    r"^([a-zA-Z0-9\s\'\´\-])+$",
  );

  static final RegExp _nameRegExp = RegExp(
    r"^([a-zA-ZÀ-ÿ\s\'\´\-])+$",
  );

  // static final RegExp _onlyLetterRegExp = RegExp(
  //   r'^([a-zA-Z\s])+$',
  // );

  static final RegExp _onlyNumberRegExp = RegExp(
    r'^([0-9])+$',
  );

  static final RegExp _passwordRegExp = RegExp(
    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[@$!%*#?&]){8,}',
  );

  static bool _isEmailValid(String email) => _emailRegExp.hasMatch(email);

  static bool _isNameValid(String value) => _nameRegExp.hasMatch(value.trim());

  // static bool _isOnlyLetterValid(String value) =>
  //     _onlyLetterRegExp.hasMatch(value.trim());

  static bool _isOnlyLetterAndNumberValid(String value) =>
      _onlyLetterAndNumberRegExp.hasMatch(value);

  static bool _isOnlyNumberValid(String value) =>
      _onlyNumberRegExp.hasMatch(value);

  static bool _isPasswordValid(String password) =>
      _passwordRegExp.hasMatch(password);

  static String? validateEmail(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!_isEmailValid(value)) {
        return I18nKeys.invalidEmailFormat.tr;
      }
    }
    return null;
  }

  static String? validateEmailRequired(String? value) {
    if (value == null || value.isEmpty) {
      return I18nKeys.fieldRequired.tr;
    } else if (!_isEmailValid(value)) {
      return I18nKeys.invalidEmailFormat.tr;
    }
    return null;
  }

  static String? validateAmountToPay(String? value, double totalDue) {
    if (value == null || value.isEmpty) {
      return I18nKeys.fieldRequired.tr;
    } else{
      final _amount = double.tryParse(value);
      if(_amount == null ||  _amount <= 0){
        return I18nKeys.invalidAmount.tr;
      }
      if(totalDue > 0 && _amount < totalDue){
        return I18nKeys.invalidAmount.tr;
      }
      return null;
    }
  }

  static String? validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return I18nKeys.fieldRequired.tr;
    }
    if (!_isNameValid(value) || value.trim().length < 2) {
      return I18nKeys.invalidName.tr;
    }
    return null;
  }

  static String? validateAccountNumberPM(String? value) {
    if (value == null || value.trim().isEmpty) {
      return I18nKeys.fieldRequired.tr;
    }
    if (!_isOnlyNumberValid(value) || value.trim().length < 20) {
      return I18nKeys.invalidAccountNumber.tr;
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null && (!_isPasswordValid(value) || value.length < 8)) {
      return I18nKeys.tapHelpIcon.tr;
    }

    return null;
  }

  static String? validateConfirmPassword(String? value, String? password) {
    if (password != null && value != password) {
      return I18nKeys.invalidConfirmPassword.tr;
    }
    return null;
  }

  static String? validateAccountNumber(
      String value, int? start, int? end, {RegExp? regExp, String? message}) {
    if (value.isNotEmpty) {
      if(regExp != null){
        return regExp.hasMatch(value) ? null : I18nKeys.tapHelpIcon.tr;
      }
      if (_isOnlyNumberValid(value) &&
          end == null &&
          (start == null || value.replaceAll(' ', '').length == start)) {
        return null;
      }
      if (_isOnlyNumberValid(value) &&
          end != null &&
          (value.replaceAll(' ', '').length >= start! &&
                  value.replaceAll(' ', '').length <= end)) {
        return null;
      }
      final text = (end != null)
          ? ', $start or $end characters long.'
          : (start != null) ? ', $start characters long.' : '';
      return 'Numbers only$text';
    }
    return I18nKeys.fieldRequired.tr;
  }

  static String? validateAlias(String? value, {bool isRequired = true}) {
    if (value != null && value.isNotEmpty) {
      if (_isOnlyLetterAndNumberValid(value) &&
          value.length > 3 &&
          value.length < 21) {
        return null;
      }
      return I18nKeys.tapHelpIcon.tr;
    }
    return isRequired ? I18nKeys.fieldRequired.tr : null;
  }

  static String? validateOnlyNumbers(String? value) {
    if (value != null && value.isNotEmpty) {
      if (_isOnlyNumberValid(value)) {
        return null;
      }
      return  I18nKeys.onlyNumbers.tr;
    }
    return I18nKeys.fieldRequired.tr;
  }

  static String? validateRequired(String? value) {
    if (value == null || value.trim().isEmpty) {
      return I18nKeys.fieldRequired.tr;
    }
    return null;
  } 

  static String? validateNis(String? value) {
    if (value == null || value.trim().isEmpty) {
      return I18nKeys.fieldRequired.tr;
    } 
    if (value.length > 10){
      return 'Must be 10 characters or fewer.';
    }
    return null;
  }

  static String? validateAnswer(String? value, {List<String?>? others}){
    if (value == null || value.trim().isEmpty) {
      return I18nKeys.fieldRequired.tr;
    }
    if(value.trim().length < 2){
      return 'At least 2 characters long.';
    }
    if(others!= null && others.contains(value)){
      return I18nKeys.uniqueAnswer.tr;
    }
    return null;
  }
}
