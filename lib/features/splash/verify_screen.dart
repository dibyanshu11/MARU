import 'package:flutter/material.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/background_image.dart';
import 'package:maaru/core/widget/round_button.dart';

import 'package:maaru/features/splash/view/after_splash_Screen2.dart';
import 'package:maaru/features/splash/view/after_splash_screen.dart';

class VerifyUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(
          assetImage: 'assets/images/splashscreen.png',
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AfterSplashScreen2()));
                    },
                    child: RoundedButton(
                      buttonName: 'I am a Provider',
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: size.height * 0.09,
                    width: size.width * 0.85,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        width: 2,
                        color: MaaruColors.buttonTextColor,
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => AfterSplashScreen()));
                      },
                      child: Text(
                        'I am a User',
                        style: TextStyle(
                            color: Colors.green[900],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }
}
