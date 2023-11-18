import 'package:resume/app/colors.dart';
import 'package:resume/app/size_config/config.dart';
import 'package:resume/app/size_config/extensions.dart';
import 'package:resume/app/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:resume/view/widgets/text_widgets.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String? hintText;
  final String? title;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool? readOnly;
  final bool? obscureText;
  final bool? autoFocus;
  final bool? filled;
  final Color? fillColor;
  final bool busy;
  final FocusNode? focusNode;
  final String? obscuringCharacter;
  final Color? borderColor;
  final Color? color;
  final Color? cursorColor;
  final Color? titleColor;

  CustomTextField({
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onSaved,
    this.hintText,
    this.title,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly,
    this.filled,
    this.fillColor,
    this.busy = false,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines = 1,
    this.onTap,
    this.autoFocus = false,
    this.focusNode,
    this.maxLength,
    this.titleColor,
    this.cursorColor,
    this.color,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 6.h),
          child: Row(
            children: [
              if (title != null)
                regularText(
                  title ?? "",
                  color: titleColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxTitleColor,
                ),
              if (title != null) const Spacer(),
              if (busy == true)
                SizedBox(
                  height: 14.h,
                  width: 14.h,
                  child: const CircularProgressIndicator(
                    strokeWidth: 3,
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.black),
                  ),
                )
            ],
          ),
        ),
        TextFormField(
          cursorColor: cursorColor ?? Theme.of(context).indicatorColor,
          cursorWidth: 1.w,
          focusNode: focusNode,
          cursorHeight: 15.h,
          autofocus: autoFocus ?? false,
          maxLines: maxLines,
          maxLength: maxLength,
          textInputAction: textInputAction,
          style: GoogleFonts.mulish(
            color: color ?? Theme.of(context).indicatorColor,
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            letterSpacing: 0.4,
          ),
          readOnly: readOnly ?? false,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 15.w,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.mulish(
              color: AppColors.textGrey,
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            fillColor: fillColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxFillColor,
            filled: filled,
            border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
              borderRadius: BorderRadius.circular(10.h),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
              borderRadius: BorderRadius.circular(10.h),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
              borderRadius: BorderRadius.circular(10.h),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor ?? Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
              borderRadius: BorderRadius.circular(10.h),
            ),
          ),
          obscureText: obscureText ?? false,
          onTap: onTap,
          obscuringCharacter: '●',
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: textInputType,
          onFieldSubmitted: onSaved,
          onSaved: onSaved,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}

class CustomUnderlineTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String? hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  final bool? readOnly;
  final bool? obscureText;
  final bool? autoFocus;
  final FocusNode? focusNode;
  final String? obscuringCharacter;
  final List<TextInputFormatter>? inputFormatters;

  CustomUnderlineTextField({
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onSaved,
    this.hintText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly,
    this.inputFormatters,
    this.obscureText = false,
    this.obscuringCharacter,
    this.maxLines = 1,
    this.onTap,
    this.autoFocus = false,
    this.focusNode,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return TextFormField(
      cursorColor: AppColors.black.withOpacity(0.4),
      cursorWidth: 1.w,
      focusNode: focusNode,
      cursorHeight: 15.h,
      autofocus: autoFocus ?? false,
      maxLines: maxLines,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      style: GoogleFonts.mulish(
        color: AppColors.black,
        fontWeight: FontWeight.w500,
        fontSize: 15.sp,
        letterSpacing: 0.4,
      ),
      readOnly: readOnly ?? false,
      decoration: InputDecoration(
        counterText: '',
        contentPadding: EdgeInsets.symmetric(
          vertical: 15.h,
          horizontal: 15.w,
        ),
        hintText: hintText,
        hintStyle: GoogleFonts.mulish(
          color: AppColors.textGrey,
          fontWeight: FontWeight.w400,
          fontSize: 15.sp,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
          borderRadius: BorderRadius.circular(10.h),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
          borderRadius: BorderRadius.circular(10.h),
        ),
        errorBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
          borderRadius: BorderRadius.circular(10.h),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).extension<ThemeColors>()!.textBoxBorderColor!, width: 1.h),
          borderRadius: BorderRadius.circular(10.h),
        ),
      ),
      obscureText: obscureText ?? false,
      onTap: onTap,
      obscuringCharacter: '●',
      controller: controller,
      textAlign: textAlign ?? TextAlign.start,
      keyboardType: textInputType,
      onFieldSubmitted: onSaved,
      onSaved: onSaved,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
