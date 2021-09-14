import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        alignment: Alignment.topCenter,
        height: size.height * 0.3,
        // width: size.width * 0.9,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/maru.png"),
            //  fit: BoxFit.cover,
          ),
        ));
  }
}
