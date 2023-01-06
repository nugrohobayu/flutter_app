import 'package:first_app/service/akun_service.dart';
import 'package:first_app/store/data.dart';
import 'package:first_app/store/post/post_store.dart';
import 'package:first_app/store/setup.dart';
import 'package:first_app/store/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

class GetApiPage extends StatefulWidget {
  const GetApiPage({Key? key}) : super(key: key);

  @override
  State<GetApiPage> createState() => _GetApiPage();
}

class _GetApiPage extends State<GetApiPage> {
  final _postStore = getIt.get<PostStore>();

  @override
  void initState() {
    getPost();
    super.initState();
  }

  Future<void> getPost() async {
    await _postStore.getPost();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Plus Jakarta Sans'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // leading: Text('Halaman Get data API'),
          title: Text('Halaman Get data API'),
        ),
        body: Observer(
          builder: (context) {
            // print(_postStore);
            if (_postStore.isLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            return ListView.builder(
              itemCount: _postStore.posts.length,
              itemBuilder: (context, index) {
                final post = _postStore.posts[index];
                return ListTile(
                  title: Text(post.title ?? ""),
                  subtitle: Text(post.body ?? ""),
                );
              },
            );
          },
        ),
        // body: Center(
        //   child: FutureBuilder<User?>(
        //     // future: _client.getUser(id: '1'),
        //     future: _user.getAkun(),
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         User? userInfo = snapshot.data;
        //         if (userInfo != null) {
        //           Data userData = userInfo.data;
        //           return Column(
        //             mainAxisSize: MainAxisSize.min,
        //             children: [
        //               Image.network(userData.avatar),
        //               SizedBox(height: 8.0),
        //               Text(
        //                 '${userInfo.data.firstName} ${userInfo.data.lastName}',
        //                 style: TextStyle(fontSize: 16.0),
        //               ),
        //               Text(
        //                 userData.email,
        //                 style: TextStyle(fontSize: 16.0),
        //               ),
        //             ],
        //           );
        //         }
        //       }
        //       return CircularProgressIndicator();
        //     },
        //   ),
        // ),
      ),
    );
  }
}
