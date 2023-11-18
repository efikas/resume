import 'package:flutter/material.dart';

class AuthModel {
  bool isLoading = false;
  bool shouldShow = false;
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  TextEditingController loginUsernameController = TextEditingController(
    text: "guest@email.com"
  );
  TextEditingController loginPasswordController = TextEditingController(
    text: "Resumes01@"
  );
}
