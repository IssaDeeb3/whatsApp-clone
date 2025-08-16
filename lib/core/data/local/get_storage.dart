import 'dart:developer';

import 'package:get_storage/get_storage.dart';

class GetStorageHandler {
  static final _storage = GetStorage();

  //! SetData =====================================
  static Future<bool> setLocalData({
    required String key,
    required dynamic value,
  }) async {
    try {
      await _storage.write(key, value);
      return true;
    } on Exception catch (e) {
      log('Save Data Error is $e');
      return false;
    }
  }

  //! GetData =====================================
  static dynamic getLocalData({required String key}) {
    return _storage.read(key);
  }

  Future<bool> removeLocalData({required String key}) async {
    try {
      await _storage.remove(key);

      return true;
    } on Exception catch (e) {
      log("remove data error is $e");
      return false;
    }
  }

  static Future<bool> clearLocalData() async {
    try {
      await _storage.erase();

      return true;
    } on Exception catch (e) {
      log("clear data error is $e");
      return false;
    }
  }

  static Future<bool> removeKey({required String key}) async {
    try {
      await _storage.remove(key);
      return true;
    } on Exception catch (e) {
      log("remove key error is $e");
      return false;
    }
  }
}
