
import 'package:resume/core/models/github_model.dart';
import 'package:resume/core/repository/github_repo.dart';
import 'package:resume/core/utils/custom_exception.dart';
import 'package:resume/core/utils/flushbar_mixin.dart';
import 'package:resume/app/mvc_pattern.dart';

class GithubController extends ControllerMVC with FlushBarMixin {
  factory GithubController([StateMVC? state]) => _this ??= GithubController._(state);
  GithubController._(StateMVC? state)
      : model = GithubModel(),
        super(state);
  static GithubController? _this;

  final GithubModel model;

  final GithubRepo githubRepo = GithubRepo();

  String error = "";

  Future<void> getRepo({bool shouldLoad = true}) async {
    if (shouldLoad) {
      setState(() {
        model.isLoading = true;
      });
    }

    try {
      dynamic response = await githubRepo.getRepo();
      if(response.runtimeType is List){
        model.repositoriesList = response as List<Map<String, dynamic>>;
      }

      setState(() {
        model.isLoading = false;
      });
    } on CustomException catch (e) {
      error = e.message;
      setState(() {
        model.isLoading = false;
      });
      showErrorNotification(state!.context, error);
    }
  }
}
