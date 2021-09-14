import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/background_image.dart';
import 'package:maaru/features/Home/presentation/create_home_screen.dart';

import 'package:maaru/features/Home/presentation/home_sceen.dart';
import 'package:maaru/features/verify/presentation/Register_pet_profile_screen3.dart';

class CreateRegisterPetProfile4 extends StatefulWidget {
  @override
  _CreateRegisterPetProfile4State createState() =>
      _CreateRegisterPetProfile4State();
}

class _CreateRegisterPetProfile4State extends State<CreateRegisterPetProfile4> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: MaaruColors.DogsBackground,
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
              height: size.height * 0.4,
              width: size.width * 0.9,
              child: BackgroundImage(
                assetImage: 'assets/images/kutta.png',
              )),
          Container(
              width: 1000,
              height: 1100,
              alignment: FractionalOffset.bottomCenter,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Container(
                  padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Max',
                            style: MaaruStyle.text.large,
                            textAlign: TextAlign.left),
                        Text('Jack  Russell'),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: 40,
                          height: 20,
                        ),
                        Text(
                          'Pet Needs',
                          style: MaaruStyle.text.small,
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Image.asset('assets/images/petneed 1.png'),
                        Image.asset('assets/images/petneed2.png'),
                        Image.asset('assets/images/petneed3.png'),
                        Image.asset('assets/images/petneed4.png'),
                        Image.asset('assets/images/petneed5.png'),
                        Image.asset('assets/images/petneed6.png'),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          CreateRegisterPetProfile3()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 50,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Colors.white12,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    'Cancel',
                                  ),
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                CreateHomeScreen()));
                                  },
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: Image.asset(
                                        'assets/images/next (2).png'),
                                  )),
                            ]),
                      ])))
        ]))));
  }
}
