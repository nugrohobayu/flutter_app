import 'package:first_app/models/secure_storage.dart';
import 'package:first_app/service/storage_service.dart';
import 'package:flutter/material.dart';

class SecureStorage extends StatefulWidget {
  const SecureStorage({Key? key}) : super(key: key);

  @override
  State<SecureStorage> createState() => _SecureStorage();
}

class _SecureStorage extends State<SecureStorage> {
  final StorageService storageService = StorageService();
  final _keyController = TextEditingController();
  final _valueController = TextEditingController();

  void initList() async {
    var _items = await storageService.ReadAllStorage();
    bool _loading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Halaman Secure Storage"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 20, 25, 0),
          child: Column(
            children: [
              SizedBox(
                child: ElevatedButton(
                    onPressed: () {
                      final Storage storageItem =
                          Storage(_keyController.text, _valueController.text);
                      Navigator.of(context).pop(storageItem);
                    },
                    child: Text("Secure Storage")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
