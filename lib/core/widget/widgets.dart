import 'dart:ui';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/theme/style.dart';

/// This is a widget that will be used for displaying header titles
class HeaderText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  HeaderText(this.text, {this.textAlign = TextAlign.center});
  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign);
    //style: MaaruStyle.text.medium);
  }
}

/// This will be used by any description that goes below header.
class BodyText extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  final bool enable;
  BodyText(this.text, {this.textAlign = TextAlign.center, this.enable});
  @override
  Widget build(BuildContext context) {
    return Text(text, textAlign: textAlign);
    //  style: KompanionStyle.text.small);
  }
}

class ThemedButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool enabled;

  const ThemedButton({Key key, this.text, this.onPressed, this.enabled = true})
      : super(key: key);

  Widget build(context) {
    final enabledColor = MaaruColors.buttonColor;
    final disabledColor = MaaruStyle.colors.buttonDisabled;

    final enabledTextColor = MaaruColors.buttonTextColor;
    final disabledTextColor = MaaruStyle.colors.textDisabled;
    return Center(
        child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Container(
                decoration: enabled ? MaaruStyle.buttonShadow : null,
                child: FlatButton(
                    minWidth: double.infinity,
                    height: ButtonMinHeight,
                    // color: MaaruColors.primaryColor,
                    shape: enabled
                        ? MaaruStyle.buttonShapeEnabled
                        : MaaruStyle.buttonShapeDisabled,
                    color: enabled ? enabledColor : disabledColor,
                    textColor: MaaruColors.buttonTextColor,
                    padding: EdgeInsets.all(18.0),
                    onPressed: onPressed,
                    child: Text(text,
                        //style: TextStyle(color: MaaruColors.buttonTextColor),

                        style: MaaruStyle.text.small.copyWith(
                            fontWeight: FontWeight.w600,
                            color: enabled
                                ? enabledTextColor
                                : disabledTextColor))))));
  }
}

class ThemedButtonGey extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool enabled;

  const ThemedButtonGey(
      {Key key, this.text, this.onPressed, this.enabled = true})
      : super(key: key);

  Widget build(context) {
    final disabledColor = MaaruStyle.colors.buttonDisabled;

    return Center(
        child: FractionallySizedBox(
            widthFactor: 0.9,
            child: Container(
                decoration: enabled ? MaaruStyle.buttonShadow : null,
                child: FlatButton(
                    minWidth: double.infinity,
                    height: ButtonMinHeight,
                    shape: MaaruStyle.buttonShapeDisabled,
                    color: disabledColor,
                    textColor: Colors.black,
                    padding: EdgeInsets.all(8.0),
                    onPressed: onPressed,
                    child: Text(''
                        //text,
                        //     style: MaaruStyle.text.small.copyWith(
                        //         fontWeight: FontWeight.w600,
                        //  color: Colors.black)
                        )))));
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final bool enabled;

  const CustomButton({Key key, this.text, this.onPressed, this.enabled = true})
      : super(key: key);

  Widget build(context) {
    final enabledTextColor = MaaruStyle.colors.enableButtonColor;

    return FractionallySizedBox(
        widthFactor: 0.9,
        child: Container(
            decoration: BoxDecoration(color: MaaruStyle.colors.cardbg),
            child: FlatButton(
                minWidth: double.infinity,
                height: ButtonMinHeight,
                shape: MaaruStyle.buttonShapeEnabled,
                // color: MaaruStyle.colors.whiteColor,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: onPressed,
                child: Text(''
                    // style: MaaruStyle.text.small.copyWith(
                    //     fontWeight: FontWeight.w600,
                    //     color: enabledTextColor

                    ))));
  }
}

class ToggleButton extends StatefulWidget {
  @override
  _ToggleButtonState createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      ToggleButtons(
        borderColor: Colors.black,
        fillColor: MaaruColors.buttonTextColor,
        // selectedBorderColor: Colors.white,
        selectedColor: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(54, 15, 54, 15),
            child: Text(
              'Male',
              style: TextStyle(fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(54, 15, 54, 15),
            child: Text(
              'Female',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
        onPressed: (int index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
          });
        },
        isSelected: isSelected,
      ),
    ]);
  }
}
