import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume/app/colors.dart';
import 'package:resume/app/mvc_pattern.dart';
import 'package:resume/app/size_config/config.dart';
import 'package:resume/app/size_config/extensions.dart';
import 'package:resume/core/controllers/auth_controller.dart';
import 'package:resume/core/routes/routers.dart';
import 'package:resume/core/utils/validations.dart';
import 'package:resume/view/widgets/app_bar.dart';
import 'package:resume/view/widgets/buttons.dart';
import 'package:resume/view/widgets/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State createState() => _LoginScreenState();
}

class _LoginScreenState extends StateMVC<LoginScreen> {
  _LoginScreenState() : super(AuthController()) {
    con = controller as AuthController;
  }
  late AuthController con;

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: (SizeConfig.screenHeight == null) ? SizeConfig.screenHeight : SizeConfig.screenHeight! - 60,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 40.h,
                      ),
                      // Image.asset(
                      //   "assets/images/logo.png",
                      //   height: 80,
                      //   width: 150,
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "Hello there!",
                          style: TextStyle(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                    ],
                  ),
                  Form(
                    key: con.model.loginFormKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: CustomTextField(
                            hintText: "Email",
                            title: "Email Address",
                            controller: con.model.loginUsernameController,
                            filled: true,
                            validator: ValidationHandler.validateEmail,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.h),
                          child: CustomTextField(
                            hintText: "Password",
                            title: "Password",
                            obscureText: !con.model.shouldShow,
                            controller: con.model.loginPasswordController,
                            filled: true,
                            suffixIcon: IconButton(
                                onPressed: con.toggleShowPassConf,
                                icon: Icon(!con.model.shouldShow ? FontAwesomeIcons.eye : FontAwesomeIcons.eyeSlash),
                              ),
                            
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30.h),
                          child: buttonWithBorder(
                            "Sign In",
                            buttonColor: AppColors.blue,
                            textColor: AppColors.white,
                            fontSize: 18.sp,
                            busy: con.model.isLoading,
                            onTap: () {
                              con.login();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
