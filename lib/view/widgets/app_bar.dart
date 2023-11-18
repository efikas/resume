import 'package:resume/app/colors.dart';
import 'package:resume/app/size_config/extensions.dart';
import 'package:resume/core/routes/routers.dart';
import 'package:flutter/material.dart';

class MyAppBar {
  static AppBar appBatWithBackButton(String title) {
    return AppBar(
      leading: const BackButton(),
      title: Text(title),
    );
  }
  

  static AppBar appBarWithBackButtonAndHeading({required String title}) {
    return AppBar(
      leading: const BackButton(
          // color: AppColors.black,
          ),
      title: Text(
        title,
        // style: const TextStyle(color: AppColors.black),
      ),
      // backgroundColor: AppColors.white,
      elevation: 0,
    );
  }

  static AppBar appBarWithHeaderRoute(BuildContext context, {String? routeSlug}) {
    return AppBar(
      leading: const BackButton(
        color: AppColors.black,
      ),
      centerTitle: false,
      elevation: 2,
      backgroundColor: Colors.white,
      actions: [
        Center(
          child: Text(
            routeSlug ?? "",
            style: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }

  static AppBar appBarWithBackHeaderImage(BuildContext context, {Function? onPressed}) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: Image.asset(
          "assets/images/back_arrow.png",
          height: 30,
        ),
        color: AppColors.black,
        onPressed: () {
          if (onPressed == null) {
            Routers.pop(context);
          } else {
            onPressed();
          }
        },
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
    );
  }

  static AppBar appBarWithBackHeaderImageAndActions(BuildContext context, {Function? onPressed, List<Widget>? actions}) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: Image.asset(
          "assets/images/back_arrow.png",
          height: 30,
        ),
        color: AppColors.black,
        onPressed: () {
          if (onPressed == null) {
            Routers.pop(context);
          } else {
            onPressed();
          }
        },
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      actions: actions,
    );
  }

  static AppBar appBarWithBackCloseAndActions(BuildContext context, {Function? onPressed, List<Widget>? actions}) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.close),
        color: AppColors.black,
        onPressed: () {
          if (onPressed == null) {
            Routers.pop(context);
          } else {
            onPressed();
          }
        },
      ),
      backgroundColor: AppColors.white,
      elevation: 0,
      actions: actions,
    );
  }

  static AppBar appBarWithCloseAndPrimaryColor(BuildContext context, {Function? onPressed}) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.close,
          color: AppColors.white,
        ),
        color: AppColors.black,
        onPressed: () {
          if (onPressed == null) {
            Routers.pop(context);
          } else {
            onPressed();
          }
        },
      ),
      backgroundColor: AppColors.primaryColor,
      elevation: 0,
    );
  }

  static AppBar none() {
    return AppBar(
      leading: const SizedBox(),
      backgroundColor: AppColors.white,
      elevation: 0,
    );
  }
}
