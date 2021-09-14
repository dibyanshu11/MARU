import 'package:flutter/material.dart';
import 'package:maaru/core/theme/maaru_style.dart';

class RoundedButton extends StatelessWidget {
  final buttonName;

  const RoundedButton({
    @required this.buttonName,
  }) : super();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.09,
      width: size.width * 0.85,
      decoration: BoxDecoration(
        color: MaaruColors.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          buttonName,
          style: TextStyle(
              color: MaaruColors.buttonTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 20),
        ),
      ),
    );
  }
}
