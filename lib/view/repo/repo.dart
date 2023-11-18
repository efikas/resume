import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:resume/app/mvc_pattern.dart';
import 'package:resume/app/size_config/config.dart';
import 'package:resume/core/controllers/github_controller.dart';
import 'package:resume/view/widgets/app_bar.dart';
import 'package:resume/view/widgets/loading.dart';

class RepoPage extends StatefulWidget {
  const RepoPage({Key? key}) : super(key: key);

  @override
  State createState() => _RepoPageState();
}

class _RepoPageState extends StateMVC<RepoPage> {
  _RepoPageState() : super(GithubController()) {
    con = controller as GithubController;
  }
  late GithubController con;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.addPostFrameCallback((_) {
      con.getRepo();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar.appBatWithBackButton("My Public Repo"),
      body: LoadingWidget(
        isLoading: con.model.isLoading,
        child: SingleChildScrollView(
          child: Container(
            height: (SizeConfig.screenHeight == null) ? SizeConfig.screenHeight : SizeConfig.screenHeight! - 60,
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ListTile(
                  title: Text("A"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
