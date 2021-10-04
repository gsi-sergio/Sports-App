class Routes {
  static Future<String> get getInitialRoute async {
    return SPLASH;
  }

  static const String SPLASH = '/splash';
  static const String DASHBOARD = '/dashboard';
  static const String BILL_DETAILS = '/bill_details';
  static const String LOGIN = '/login';
  static const String REGISTER = '/register';
  static const String FORGOT_PASSWORD = '/forgot_password';
  static const String SETTINGS = '/settings';
  static const String CHANGE_PASSWORD = '/change_password';
  static const String TERM_AND_CONDITIONS = '/term_and_contitions';
  static const String PRIVACY_POLICY = '/privacy_policy';
}
