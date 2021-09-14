import 'package:flutter/material.dart';

class BackgroundImage extends StatelessWidget {
  final String assetImage;

  const BackgroundImage({Key key, @required this.assetImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetImage),
          fit: BoxFit.cover,
          // colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
        ),
      ),
    ));
  }
}
