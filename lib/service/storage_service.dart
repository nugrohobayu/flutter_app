import 'package:first_app/models/secure_storage.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService {
  final secureSetorage = const FlutterSecureStorage();

  // AndroidOptions _getAndroidOptions() => AndroidOptions(encryptedSharedPreferences: true);

  //WRITE
  Future<void> WriteStorage(Storage newItem) async {
    await secureSetorage.write(key: newItem.key, value: newItem.value);
  }

  //READ
  Future<String?> ReadStorage(String key) async {
    var readData = await secureSetorage.read(key: key);
    return readData;
  }

  //DELETE
  Future<void> DeleteStorage(Storage item) async {
    await secureSetorage.delete(key: item.key);
  }

  //CONTAINSKEY
  Future<bool> ContainsKeyInStorage(String key) async {
    var containsKey = await secureSetorage.containsKey(key: key);
    return containsKey;
  }

  //READALL
  Future<List<Storage>> ReadAllStorage() async {
    var allData = await secureSetorage.readAll();

    List<Storage> list =
        allData.entries.map((e) => Storage(e.key, e.value)).toList();
    return list;
  }

  //DELETEALL
  Future<void> DeleteAllStore() async {
    await secureSetorage.deleteAll();
  }
}
