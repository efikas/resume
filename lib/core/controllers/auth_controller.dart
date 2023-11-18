import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:resume/core/models/auth_model.dart';
import 'package:resume/core/repository/auth_repo.dart';
import 'package:resume/core/routes/routers.dart';
import 'package:resume/core/utils/custom_exception.dart';
import 'package:resume/core/utils/flushbar_mixin.dart';
import 'package:resume/app/mvc_pattern.dart';
import 'package:resume/view/app.dart';

class AuthController extends ControllerMVC with FlushBarMixin {
  factory AuthController([StateMVC? state]) => _this ??= AuthController._(state);
  AuthController._(StateMVC? state)
      : model = AuthModel(),
        super(state);
  static AuthController? _this;

  final AuthModel model;

  final AuthRepo authRepo = AuthRepo();

  String error = "";

  void toggleShowPassConf() {
    setState(() {
      model.shouldShow = !model.shouldShow;
    });
  }

  Future<void> login({bool shouldLoad = true}) async {
    if (model.loginFormKey.currentState != null && model.loginFormKey.currentState!.validate()) {
      model.loginFormKey.currentState!.save();
      if (shouldLoad) {
        setState(() {
          model.isLoading = true;
        });
      }

      try {
        Future.delayed(const Duration(seconds: 5), () async {
          Map<String, dynamic> response = await authRepo.login({
            "email": model.loginUsernameController.text,
            "password": model.loginPasswordController.text,
          });
          if (response["status"] == true) {
            Routers.replaceAllWithWidget(state!.context, DashboardPage());
          } else {
            showErrorNotification(state!.context, response["message"]);
          }

          setState(() {
            model.isLoading = false;
          });
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
}
