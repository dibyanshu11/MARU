import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/theme/style.dart';

class _ThemedTextFieldState extends State<ThemedTextField> {
  bool _obscureText = false;
  bool _password = false;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _focusNode = FocusNode();

  _ThemedTextFieldState(this._password) {
    _obscureText = this._password;
  }

  @override
  void initState() {
    super.initState();

    // Force a repaint whenever focus changes
    _focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  /// inputDectoration deals with passing border details
  /// and placeholder details
  inputDecoration(ThemedTextField widget) {
    return InputDecoration(
      filled: true,
      fillColor: Colors.white,
      suffixIcon: widget.suffixIcon != null
          ? Container(
              child: FractionallySizedBox(
                  heightFactor: 0.7,
                  child: TextButton(
                      onPressed: _password ? _toggle : null,
                      child: Image(image: widget.suffixIcon))))
          : null,
      errorBorder: MaaruStyle.defaultBorder,
      // focusedErrorBorder: MaaruStyle.defaultBorder,
      // border: MaaruStyle.defaultBorder,
      // disabledBorder: MaaruStyle.defaultBorder,
      // enabledBorder: MaaruStyle.defaultBorder,
      // focusedBorder: MaaruStyle.focusedBorder,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelText: widget.placeholder,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            height: TextFieldContainerHeight,
            color: Colors.white,
            child: FractionallySizedBox(
                widthFactor: 0.9,
                heightFactor: 1,
                child: Column(children: [
                  Container(
                      height: TextFieldHeight,
                      child: Form(
                          key: _formKey,
                          child: TextFormField(
                            focusNode: _focusNode,
                            obscureText: _obscureText,
                            enabled: widget.enabled,
                            controller: widget.editingController,
                            onChanged: widget.onChanged,
                            autocorrect: false,
                            keyboardType: widget.keyboardType,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            decoration: inputDecoration(widget),
                          )))
                ]))));
  }
}

/// Themed form text input field
///
/// Themes a default TextField, allowing various elements to be customised by
/// injecting them into the constructor. This will be used everywhere and
/// it uses a fixed height to allow properly rounding the edges. The height
/// will be defined in style.
class ThemedTextField extends StatefulWidget {
  final String placeholder;
  final ImageProvider suffixIcon;
  final TextInputType keyboardType;
  final ValueChanged<String> onChanged;
  final TextEditingController editingController;
  final bool enabled, password;
  final Text text;

  ThemedTextField(
    this.placeholder,
    this.keyboardType, {
    this.suffixIcon,
    this.onChanged,
    this.text,
    this.editingController,
    this.enabled,
    this.password = false,
    TextInputAction textInputAction,
    bool autovalidate,
  });

  @override
  _ThemedTextFieldState createState() => _ThemedTextFieldState(this.password);
}

class ThemeChanges2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: ThemedTextField(
              "Weight", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 15),
            child: ThemedTextField(
              "0ft", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 15),
            child: ThemedTextField(
              "lbs", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
      ],
    );
  }
}

class ThemeChanges extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: ThemedTextField(
              "Height", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 15),
            child: ThemedTextField(
              "0", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
        new Flexible(
          child: Container(
            padding: EdgeInsets.only(right: 15),
            child: ThemedTextField(
              "0 inch", TextInputType.text,
              textInputAction: TextInputAction.next,
              onChanged: (text) {
                //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
              },
              //   editingController: _lnameController
            ),
          ),
        ),
      ],
    );
  }
}
