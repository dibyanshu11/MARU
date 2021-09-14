import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final double avatarRadius;
  final double width;

  const ProfileAvatar(
      {Key key,
      @required this.imageUrl,
      @required this.avatarRadius,
      @required this.width,
      child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.center,
        height: avatarRadius,
        width: width,
        // color: MyTheme.red,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: avatarRadius,
                width: avatarRadius,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 0),
                    image: DecorationImage(
                        image: AssetImage(imageUrl),
                        //  NetworkImage(imageUrl),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ));
  }
}
