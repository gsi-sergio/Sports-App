import 'package:get/get.dart';
import 'package:the_game_app/core/connection_service/index.dart';
import 'package:the_game_app/core/env/index.dart';
import 'package:the_game_app/core/token_getter_service/index.dart';
import 'package:the_game_app/infrastructure/core/local_db/index.dart';
import 'package:the_game_app/infrastructure/core/rest_api/index.dart';

T sl<T>() => Get.find<T>();

Future<void> registerServiceContainer(BuildEnvironment env) async {
  Get.put<BuildEnvironment>(env, permanent: true);

  await Get.putAsync<CacheManager>(() => CacheManager().init());
  Get.put<PublicAccessRestClient>(PublicAccessRestClient(), permanent: true);
  await Get.putAsync<ConnectionStatus>(() => ConnectionStatus().init());

  Get.put<TokenGetter>(TokenGetter(sl()), permanent: true);

  
  Get.put<SecureAccessRestClient>(SecureAccessRestClient(getter: sl()), permanent: true);
}
