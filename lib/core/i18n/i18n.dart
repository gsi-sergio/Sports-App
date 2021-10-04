
class Languages {
  static const ENGLISH = "EN";
  static const SPANISH = "ES";
  static const FRENCH = "FR";
  static const GERMAN = "DE";
}

class I18n {
  static Map<String, Map<String, String>> get translations =>
      Map<String, Map<String, String>>.from({
        Languages.ENGLISH: {
          I18nKeys.english: 'English',
          I18nKeys.next: 'Next',
          I18nKeys.back: 'Back',
          // validation errors
          I18nKeys.fieldRequired: 'This field is required',
          I18nKeys.invalidEmailFormat: 'Invalid email format',
          I18nKeys.invalidPassword:
              'At least one capital letter, a special character, and more than 7 characters',
          I18nKeys.invalidConfirmPassword:
              'Confirm password must match the Password.',
          I18nKeys.invalidName: 'Letters only, 2 characters min',
          I18nKeys.tapHelpIcon:
              'Tap the help (?) icon to see the correct format',
          I18nKeys.invalidAccountNumber: 'Number only, 20 characters min',
          I18nKeys.invalidAliasFormat:
              'Letters and numbers only, between 4 and 20 characters.',
          I18nKeys.invalidAmount: 'Invalid amount',
          I18nKeys.invalidAmountFormat:
              'The amount must be greater than or equal to billing amount.',
          I18nKeys.jnAccountNeeded:
              'A JN Account is needed to activate this action.',
          I18nKeys.onlyNumbers: 'Numbers only.',
          I18nKeys.uniqueAnswer: 'The answer should be unique.',
          //snackbar
          I18nKeys.warning: 'Warning',
          I18nKeys.info: 'Info',
          I18nKeys.success: 'Success',
          //core
          I18nKeys.unableConnect: 'We are unable to connect to our services',
          I18nKeys.checkConnection: 'Please check your internet connection and try again',
          I18nKeys.reload: 'Reload',
          I18nKeys.show: 'Show',
          I18nKeys.notAbleToDo: 'We were not able to do your request, please try again',
          //login
          I18nKeys.keepMeSigned: 'Keep me Signed in',
          I18nKeys.signIn: 'Sign in',
          I18nKeys.emailAddress: 'Email Address',
          I18nKeys.password: 'Password',
          I18nKeys.forgotPasswordQuestion: 'Forgot Password?',
          I18nKeys.notAccount: "Don't have an account?",
          I18nKeys.registerNow: 'Register Now',
          //Settings
          I18nKeys.preferences: 'Preferences',
          I18nKeys.languages: 'Languages',
          I18nKeys.theme: 'Theme',
          I18nKeys.connectionStatus: 'Connection status',
          I18nKeys.online: 'Online',
          I18nKeys.offline: 'Offline',
        },
        Languages.SPANISH: {
          I18nKeys.english: 'English',
          I18nKeys.next: 'Next',
          I18nKeys.back: 'Back',
          // validation errors
          I18nKeys.fieldRequired: 'This field is required',
          I18nKeys.invalidEmailFormat: 'Invalid email format',
          I18nKeys.invalidPassword:
              'At least one capital letter, a special character, and more than 7 characters',
          I18nKeys.invalidConfirmPassword:
              'Confirm password must match the Password.',
          I18nKeys.invalidName: 'Letters only, 2 characters min',
          I18nKeys.tapHelpIcon:
              'Tap the help (?) icon to see the correct format',
          I18nKeys.invalidAccountNumber: 'Number only, 20 characters min',
          I18nKeys.invalidAliasFormat:
              'Letters and numbers only, between 4 and 20 characters.',
          I18nKeys.invalidAmount: 'Invalid amount',
          I18nKeys.invalidAmountFormat:
              'The amount must be greater than or equal to billing amount.',
          I18nKeys.jnAccountNeeded:
              'A JN Account is needed to activate this action.',
          I18nKeys.onlyNumbers: 'Numbers only.',
          I18nKeys.uniqueAnswer: 'The answer should be unique.',
          //snackbar
          I18nKeys.warning: 'Warning',
          I18nKeys.info: 'Info',
          I18nKeys.success: 'Success',
          //core
          I18nKeys.unableConnect: 'We are unable to connect to our services',
          I18nKeys.checkConnection: 'Please check your internet connection and try again',
          I18nKeys.reload: 'Reload',
          I18nKeys.show: 'Show',
          I18nKeys.notAbleToDo: 'We were not able to do your request, please try again',
          //login
          I18nKeys.keepMeSigned: 'Keep me Signed in',
          I18nKeys.signIn: 'Sign in',
          I18nKeys.emailAddress: 'Email Address',
          I18nKeys.password: 'Password',
          I18nKeys.forgotPasswordQuestion: 'Forgot Password?',
          I18nKeys.notAccount: "Don't have an account?",
          I18nKeys.registerNow: 'Register Now',
          //Settings
          I18nKeys.preferences: 'Preferences',
          I18nKeys.languages: 'Languages',
          I18nKeys.theme: 'Theme',
          I18nKeys.connectionStatus: 'Connection status',
          I18nKeys.online: 'Online',
          I18nKeys.offline: 'Offline',
        },
      });
}

class I18nKeys {
  static const String english = 'english';
  static const String next = 'Next';
  static const String back = 'Back';
  //validation errors
  static const String fieldRequired = 'field_required';
  static const String invalidEmailFormat = 'invalid_email_format';
  static const String invalidPassword = 'invalid_password';
  static const String invalidConfirmPassword = 'invalid_confirm_password';
  static const String invalidName = 'invalid_name';
  static const String tapHelpIcon = 'tap_help_icon';
  static const String invalidAccountNumber = 'invalid_account_number';
  static const String invalidAliasFormat = 'invalid_alias_format';
  static const String invalidAmount = 'invalid_amount';
  static const String invalidAmountFormat = 'invalid_amount_format';
  static const String jnAccountNeeded = 'jn_account_needed';
  static const String onlyNumbers = 'only_numbers';
  static const String uniqueAnswer = 'unique_answer';
  //snackbar
  static const String warning = 'warning';
  static const String info = 'info';
  static const String success = 'success';
  static const String show = 'show';
  //core
  static const String unableConnect = 'unable_connect';
  static const String checkConnection = 'check_connection';
  static const String reload = 'reload';
  static const String notAbleToDo = 'not_able_to_do';
  //login
  static const String keepMeSigned = 'keep_me_signed';
  static const String signIn = 'sign_in';
  static const String emailAddress = 'email_address';
  static const String password = 'password';
  static const String forgotPasswordQuestion = 'forgot_password_question';
  static const String notAccount = 'not_account';
  static const String registerNow = 'register_now';
  //Settings 
  static const String preferences = 'preferences';
  static const String theme = 'theme';
  static const String languages = 'languages'; 
  //connection status
  static const String connectionStatus = 'Connection status';
  static const String online = 'Online';
  static const String offline = 'Offline';
}
