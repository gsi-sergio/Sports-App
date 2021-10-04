import 'package:get/get.dart';
import 'package:the_game_app/domain/account/repositories/index.dart';

class TokenGetter extends GetxService{
  final IAccountRepository accountRepository;

  TokenGetter(this.accountRepository);

  Future<String> call() async {
    final result = await accountRepository.getToken();
    return result.fold((l) => ' ', (r) => r.idToken);
  }

}