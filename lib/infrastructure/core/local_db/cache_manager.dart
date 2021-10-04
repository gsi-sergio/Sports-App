import 'dart:async';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:the_game_app/infrastructure/core/local_db/index.dart';

class CacheManager extends GetxService {
  late Box loggedUserBox;

  Future<CacheManager> init() async {
    final directory = await getApplicationDocumentsDirectory();
    Hive
      ..init(directory.path)
      // ..registerAdapter(UserDtoAdapter())
      ;

    loggedUserBox = await Hive.openBox(CacheBoxes.LOGGED_USER_BOX);
    return this;
  }

  Box _getBox(String boxName) {
    switch (boxName) {
      case CacheBoxes.LOGGED_USER_BOX:
        return loggedUserBox;
      default:
        return loggedUserBox;
    }
  }

  Future<bool> isExists({required String boxName}) async {
    final response = await Hive.boxExists(boxName);
    return response;
  }

  Future<int> add<T>(T item, String boxName) async {
    final box = _getBox(boxName);
    final response = await box.add(item);
    return response;
  }

  Future<List<int>> addAll<T>(List<T> items, String boxName) async {
    final box = _getBox(boxName);
    final response = await box.addAll(items);
    return response.toList();
  }

  Future<T> get<T>(String key, String boxName) async {
    final box = _getBox(boxName);
    final response = await box.get(key) as T;
    return response;
  }

  Future<T> getAt<T>(int index, String boxName) async {
    final box = _getBox(boxName);
    final response = await box.getAt(index) as T;
    return response;
  }

  Future<List<T>> getAll<T>(String boxName) async {
    final box = _getBox(boxName);
    List<T> boxList = [];
    int length = box.length;

    for (int i = 0; i < length; i++) {
      boxList.add(box.getAt(i) as T);
    }
    return boxList;
  }

  Future<void> deleteAt<T>(int index, String boxName) async {
    final box = _getBox(boxName);
    await box.deleteAt(index);
  }

  Future<void> delete<T>(String key, String boxName) async {
    final box = _getBox(boxName);
    await box.delete(key);
  }

  Future<void> deleteAll<T>(String boxName) async {
    final box = _getBox(boxName);
    await box.deleteAll(box.keys);
  }

  Future<int> putAt<T>(int index, T item, String boxName) async {
    final box = _getBox(boxName);
    await box.putAt(index, item);
    return index;
  }

  Future<void> put<T>(String key, T item, String boxName) async {
    final box = _getBox(boxName);
    await box.put(key, item);
  }

  Future<void> putAll<T>(Map<String, dynamic> items, String boxName) async {
    final box = _getBox(boxName);
    await box.putAll(items);
  }

  Future<void> clearCache() async {
    for (var item in CacheBoxes.ALL_BOXES) {
      await Hive.box(item).clear();
    }
  }

  FutureOr onClose() async {
    for (var item in CacheBoxes.ALL_BOXES) {
      if (Hive.isBoxOpen(item)) {
        await Hive.box(item).compact();
      }
    }
    await Hive.close();
  }
}
