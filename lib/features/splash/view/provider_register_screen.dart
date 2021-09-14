import 'dart:ui';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class ProviderRegisterScreen extends StatefulWidget {
  @override
  _ProviderRegisterScreenState createState() => _ProviderRegisterScreenState();
}

class _ProviderRegisterScreenState extends State<ProviderRegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text(
        'Work In Process $Icons.emoji_emotions 😀',
        style: TextStyle(height: 30),
      ),
    ));
  }
}
