import 'package:flutter/material.dart';

class PostApiPage extends StatefulWidget {
  const PostApiPage({Key? key}) : super(key: key);

  @override
  State<PostApiPage> createState() => _PostApiPage();
}

class _PostApiPage extends State<PostApiPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  bool validate = false;
  bool checkPassword = false;
  bool checkUsername = false;

  bool visiblePassword = true;
  bool visibleConfirm = true;

  bool validateEmpty = false;
  bool validateConfirm = false;

  @override
  Widget build(BuildContext context) {
    validateInput(String? value) {
      String pattern =
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
      RegExp regex = RegExp(pattern);

      if (value == null || value == value.isEmpty || !regex.hasMatch(value)) {
        return 'Masukkan Password';
      } else {
        return null;
      }
    }

    @override
    void dispose() {
      usernameController.dispose();
      passwordController.dispose();
      super.dispose();
    }

    return MaterialApp(
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Halaman Post Api"),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            children: [
              SizedBox(
                child: TextFormField(
                  controller: usernameController,
                  focusNode: FocusNode(),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) => validateInput(value),
                  onChanged: ((value) {
                    setState(() {
                      if (usernameController.text.isNotEmpty) {
                        validate = false;
                      } else {
                        validate = true;
                      }
                    });
                  }),
                  decoration: InputDecoration(
                      labelText: 'Masukkan Username',
                      errorText: validate
                          ? 'username tidak boleh kosong'
                          : checkUsername
                              ? 'username sudah dipakai'
                              : null),
                ),
              ),
              SizedBox(
                child: TextFormField(
                  controller: passwordController,
                  focusNode: FocusNode(),
                  onChanged: (value) {
                    setState(() {
                      validateEmpty = false;
                    });
                    print(value + 'value');
                  },
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  obscureText: visiblePassword,
                  decoration: InputDecoration(
                    errorText: validateEmpty ? 'Password harus di isi' : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (visiblePassword == true) {
                            visiblePassword = false;
                          } else {
                            visiblePassword = true;
                          }
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    labelText: 'Masukkan Password',
                  ),
                ),
              ),
              SizedBox(
                child: TextFormField(
                  controller: confirmPasswordController,
                  focusNode: FocusNode(),
                  onChanged: (value) {
                    setState(() {
                      if (value == passwordController.text) {
                        validateConfirm = false;
                      } else {
                        validateConfirm = true;
                      }
                    });
                  },
                  obscureText: visibleConfirm,
                  keyboardType: TextInputType.visiblePassword,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    errorText: validateConfirm ? 'Password tidak sesuai' : null,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          if (visibleConfirm == true) {
                            visibleConfirm = false;
                          } else {
                            visibleConfirm = true;
                          }
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_outlined),
                    ),
                    labelText: 'Konfirmasi Password',
                  ),
                ),
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Register'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
