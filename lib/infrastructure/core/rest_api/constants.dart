const String BASE_URL_DEV =
    "https://api.khaleesi.ml";
const String BASE_URL_PROD = "https://jnbillpayapi-mcs.azurewebsites.net";
const String BASE_URL_QA = "https://api.khaleesi.ml";

class Endpoints {
  static const SIGN_IN = "signin";
  static const SIGN_OUT = "account/signout";
  static const USERS = "users";
  static const BILLERS = 'billers';
  static String getAlias(int userId) => "/billSetup/alias/$userId";
  static String getUser(int userId) => "users/$userId";
  static const ACCOUNT_QUESTIONS = "account/questions";
  static const SEND_CODE = "account/sendcode";
  static String resetPassword(int userId) => "users/$userId/password";
  static const ACCOUNT_ACTIVATE = "account/activate";
  static const ACCOUNT_REFRESH = "account/refresh";
  static const ACCOUNT_CHANGE_PASSWORD = 'account/changepassword';
  static const TITLES = "titles";
  static String getAudiosZip(String language) => "download/zip-audio/$language";
  static String getQuestionFilter(String filter) => "?filter[province]=$filter";
  static String getUserBills(String userId) => "users/$userId/bills";
  static String getUserBillById(String userId, int billId) => "users/$userId/bills/$billId";
  static String activeBill(int billId, {bool status = false}) => "bills/$billId/active/$status";
  static String billById(int billId) => "bills/$billId";
  static const EMAIL_PROVIDER = "emailProviders";
  static String setupMailbox(String userId, int mailbox) => "users/$userId/setupemail/$mailbox";
  static String deviceToken(String userId) => "users/$userId/deviceToken";
  static String activeNotifications(int userId) => "users/$userId/notifications";
  static const PRIVACY_POLICY = "privacyPolicy";
  static const TERMS = 'terms';
  static const QUESTIONS = 'questions';
  static const BANK_ACCOUNT_QUESTIONS = 'bankAccount/questions';
  static String paymentMethodsActive(int pmId, {bool status = false}) => "paymentMethods/$pmId/active/$status";
  static String paymentMethodsById(int pmId) => "paymentMethods/$pmId";
  static const BANK_INSTITUTION = 'bankInstitution';
  static String userPaymentMethods(String userId) => "users/$userId/paymentmethods";
  static const BANK_ACCOUNT_TYPE = 'bankAccountTypes';
  static const BANK_BRANCH = 'bankBranch';
  static String bankAccountVerify(int bankAccountId) => "bankAccount/$bankAccountId/verify";
  static String paymentMethodsAsDefault(int pmId) => "paymentMethods/$pmId/default";
  static const PAYMENTS = 'payments';
  static String userPayments(String userId) => "users/$userId/payments";
  static const PAYMENT_METHODS_TYPES = 'paymentMethodTypes';
  static const SOURCE_OF_FUNDS = 'SourceOfFunds';
  static const COUNTRY = 'Country';
  static String regionsByContry(String countryId) => "country/$countryId/regions";
}
