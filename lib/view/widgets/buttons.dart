import 'package:resume/app/colors.dart';
import 'package:resume/app/size_config/extensions.dart';
import 'package:flutter/material.dart';

import 'text_widgets.dart';

Widget buttonWithBorder(
  String text, {
  Color? buttonColor,
  required Color textColor,
  Function()? onTap,
  Color? borderColor,
  FontWeight? fontWeight,
  required double fontSize,
  double? horiMargin,
  double? borderRadius,
  double? height,
  double? width,
  Widget? icon,
  bool busy = false,
  bool diabled = false,
}) {
  return InkWell(
    onTap: (busy || diabled) ? null : onTap,
    child: Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: horiMargin ?? 0),
      decoration: BoxDecoration(
        color: (diabled) ? buttonColor?.withOpacity(0.5) : buttonColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 8.h),
        border: Border.all(
          color: borderColor ?? Colors.transparent,
        ),
      ),
      child: Center(
        child: busy
            ? SizedBox(
                child: const CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 20.h,
                width: 20.h,
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (icon != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: icon,
                    ),
                  regularText(
                    text,
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: fontWeight ?? FontWeight.w600,
                  ),
                ],
              ),
      ),
    ),
  );
}
