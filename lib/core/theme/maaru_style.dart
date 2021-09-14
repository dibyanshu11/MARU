import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MaaruColors {
  final bool _darkTheme;
  MaaruColors(this._darkTheme);
  static Color primaryColor = Color(0xffFFC938);
  static Color buttonColor = Color(0xFFffe05b);
  static Color buttonTextColor = Color(0xFF367355);
  static Color textButtonColor = Color(0xFFcc1f19);
  static Color textColor = Color(0xFF6a6a6a);
  static Color whiteColor = Color(0xFFE5E5E5);
  Color buttonTextColor1 = Color(0xFF367355);
  static Color DogsBackground = Color(0xFFedc8be);
  Color darkColor = Color(0xFF171819);
  Color textColorWhite = Color(0xffffffff);
  Color textColorBlack = Color(0xff0000000);
  Color darkGrey = Color(0xffA1A6AB);
  Color lightGrey = Color(0xffD5D9DE);
  Color snowGrey = Color(0xFFF0F2F5);
  Color greyNight = Color(0xffE1E9F0);
  Color greyNight500 = Color(0xff6B7075);
  Color greyNight600 = Color(0xff404952);
  Color greyNight800 = Color(0xff1C2024);
  Color greyDay100 = Color(0xff171819);
  Color greyDay800 = Color(0xffF7FAFC);
  Color greyDay600 = Color(0xffD5D9DE);
  Color green = Color(0xff2B954C); // Green color for buttons
  Color greenAccent = Color(0x336de793); // Green border highlight for buttons
  Color dotIndicator = Color(0xff404952);
  Color navyBlue = Color(0xff3f37c9);
  Color enableButtonColor = Color(0xffFF6D42);
  Color bottomBg = Color(0xffFAFBFF);
  Color borderColor = Color(0xffD8D8D8);

  Color get formFieldBorder =>
      _darkTheme ? greyNight.withOpacity(0.1) : darkColor.withOpacity(0.1);
  Color get formFieldFill => _darkTheme ? darkColor : whiteColor;
  Color get enableDisabled => _darkTheme ? Color(0xff1c2024) : green;
  Color get buttonDisabled => _darkTheme ? Color(0xff1c2024) : lightGrey;
  Color get textDisabled => _darkTheme ? Color(0xff6b7075) : darkGrey;

  Color get cardbg => _darkTheme ? greyNight800 : greyDay800;

  Color get modalBg => _darkTheme
      ? Color(0xE1E9F0).withOpacity(0.1)
      : Color(0xF0F2F5).withOpacity(0.9);
  Color get divider => _darkTheme ? Color(0x0DE1E9F0) : Color(0xFFD5D9DE);
  TextStyle get tiny {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 15,
        color: MaaruColors(_darkTheme).textColorBlack);
  }

  TextStyle get small => TextStyle(
      //   fontWeight: FontWeight.bold,
      fontFamily: 'Quicksand',
      fontSize: 20,
      color: Colors.black);

  TextStyle get medium {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 20,
        color: _darkTheme
            ? MaaruColors(_darkTheme).textColorWhite
            : MaaruColors(_darkTheme).textColorBlack);
  }

  TextStyle get large {
    return TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Quicksand',
        fontSize: 25,
        color: _darkTheme
            ? MaaruStyle.colors.textColorWhite
            : MaaruStyle.colors.textColorBlack);
  }

  TextStyle get mediumDisable {
    return TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Quicksand',
        fontSize: 20,
        color: MaaruColors.textButtonColor);
  }
}

// ignore: unused_element
class _MaaruTextStyle {
  final bool _darkTheme;

  _MaaruTextStyle(this._darkTheme);
  TextStyle get tiniest {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 13,
        color: _darkTheme
            ? MaaruColors(_darkTheme).textColorWhite
            : MaaruColors(_darkTheme).textColorBlack);
  }

  TextStyle get tiny {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 15,
        color: _darkTheme
            ? MaaruColors(_darkTheme).textColorWhite
            : MaaruColors(_darkTheme).textColorBlack);
  }

  TextStyle get large {
    return TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Quicksand',
        fontSize: 25,
        color: _darkTheme
            ? MaaruStyle.colors.textColorWhite
            : MaaruStyle.colors.textColorBlack);
  }

  TextStyle get xlarge {
    return TextStyle(
        fontWeight: FontWeight.w700,
        fontFamily: 'Quicksand',
        fontSize: 34,
        color: _darkTheme
            ? MaaruStyle.colors.textColorWhite
            : MaaruStyle.colors.textColorBlack);
  }

  TextStyle get tinyDisable {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 13,
        color: _darkTheme
            ? MaaruStyle.colors.greyNight500
            : MaaruStyle.colors.greyDay100);
  }

  TextStyle get smallDisable {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 15,
        color: _darkTheme
            ? MaaruStyle.colors.greyNight500
            : MaaruStyle.colors.greyDay100);
  }

  TextStyle get actionBar {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 20,
        color: _darkTheme
            ? MaaruStyle.colors.textColorWhite
            : MaaruStyle.colors.textColorBlack);
  }

  TextStyle get mediumButton {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 16,
        color: MaaruStyle.colors.textColorWhite);
  }

  TextStyle get smallGreen {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 15,
        color: MaaruStyle.colors.green);
  }

  TextStyle get mediumGreen {
    return TextStyle(
        fontWeight: FontWeight.w400,
        fontFamily: 'Quicksand',
        fontSize: 20,
        color: MaaruStyle.colors.green);
  }
}

class MaaruStyle {
  static bool _isDarkTheme = false;

  static MaaruColors get colors => MaaruColors(_isDarkTheme);
  static MaaruColors get text => MaaruColors(_isDarkTheme);

  static get buttonShapeEnabled => RoundedRectangleBorder(
      side: BorderSide(color: Colors.amber, width: 1),
      borderRadius: BorderRadius.circular(10));

  static get buttonShapeDisabled => RoundedRectangleBorder(
      side: BorderSide(color: Colors.yellowAccent.withOpacity(0.25), width: 1),
      borderRadius: BorderRadius.circular(2));

  static get buttonShadow => _isDarkTheme
      ? BoxDecoration(borderRadius: BorderRadius.circular(22.5), boxShadow: [])
      : null;

  /// Text field borders for focused and default
  ///

  static final defaultBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide(color: Colors.white));

  static get focusedBorder => OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide(color: colors.formFieldBorder));

  static List<BoxShadow> focusedShadow = [
    BoxShadow(color: MaaruColors.whiteColor.withOpacity(0.2), spreadRadius: 3)
  ];

  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    _isDarkTheme = isDarkTheme;
    return ThemeData(
      appBarTheme: AppBarTheme(
        elevation: 0.0,
        color: Colors.transparent,
      ),
      primarySwatch: Colors.grey,
    );
  }
}
