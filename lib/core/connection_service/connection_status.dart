import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:the_game_app/core/i18n/index.dart';

const String INTERNET_LOOKUP_HOST = 'google.com';

class ConnectionStatus extends GetxService {
  bool hasConnection = false;

  StreamController connectionChangeController =
      new StreamController.broadcast();

  Future<ConnectionStatus> init() async {
    return this;
  }

  @override
  Future<void> onInit() async {
    await checkConnection();
    _connectivity.onConnectivityChanged.listen(_connectionChange);
    super.onInit();
  }

  @override
  void onClose() async {
    await connectionChangeController.close();
    super.onClose();
  }

  final Connectivity _connectivity = Connectivity();

  Stream get connectionChange => connectionChangeController.stream;

  void _connectionChange(ConnectivityResult result) {
    checkConnection();
  }

  Future<bool> checkConnection() async {
    bool prevConnection = hasConnection;
    try {
      final result = await InternetAddress.lookup(INTERNET_LOOKUP_HOST);
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        hasConnection = true;
      } else {
        hasConnection = false;
      }
    } on SocketException catch (_) {
      hasConnection = false;
    }

    if (prevConnection != hasConnection) {
      connectionChangeController.add(hasConnection);
    }

    // Get.snackbar(
    //   I18nKeys.connectionStatus.tr,
    //   hasConnection ? I18nKeys.online.tr : I18nKeys.offline.tr,
    //   backgroundColor: hasConnection
    //       ? CustomColorScheme.goodColor
    //       : CustomColorScheme.badColor,
    //   icon: Icon(
    //     hasConnection ? Icons.wifi : Icons.wifi_off,
    //     color: CustomColorScheme.white,
    //   ),
    //   colorText: CustomColorScheme.white,
    //   snackPosition: SnackPosition.BOTTOM,
    //   margin: const EdgeInsets.all(12),
    //   duration: const Duration(seconds: 4),
    // );

    return hasConnection;
  }
}
