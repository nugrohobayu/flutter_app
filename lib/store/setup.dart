import 'package:first_app/service/post_api.dart';
import 'package:first_app/store/post/post_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton(PostApi());
  getIt.registerSingleton(PostStore(getIt.get<PostApi>()));
  // GetIt.instance.registerSingleton<PostStore>(PostStore());
}
