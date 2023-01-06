import 'package:first_app/models/post.dart';
import 'package:first_app/service/post_api.dart';
import 'package:mobx/mobx.dart';
part 'post_store.g.dart';

class PostStore = _PostStore with _$PostStore;

abstract class _PostStore with Store {
  _PostStore(PostApi postApi) : _postApi = postApi;

  late final PostApi _postApi;

  @observable
  List<Post> posts = [];

  @observable
  bool isLoading = false;

  @action
  Future getPost() async {
    isLoading = true;
    final postList = await _postApi.getPost();
    posts = postList;
    isLoading = false;
  }
}
