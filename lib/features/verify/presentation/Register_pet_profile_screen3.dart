import 'package:flutter/cupertino.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/background_image.dart';
import 'package:maaru/features/register/presentation/signup_screen.dart';
import 'package:maaru/features/verify/presentation/register_pet_profile4.dart';

import 'package:toggle_switch/toggle_switch.dart';

import 'Register_pet_profile_screen2.dart';

class CreateRegisterPetProfile3 extends StatefulWidget {
  @override
  _CreateRegisterPetProfile3State createState() =>
      _CreateRegisterPetProfile3State();
}

class _CreateRegisterPetProfile3State extends State<CreateRegisterPetProfile3> {
  TextEditingController _nameEditingController;
  TextEditingController _controller;
  bool priceupdate_value = true;
  bool status = true;
  @override
  void initState() {
    _nameEditingController = TextEditingController();
    _controller = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _nameEditingController.dispose();
    _controller.dispose();
    super.dispose();
  }

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
              height: 1500,
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
                        'Walking Schedule',
                        style: MaaruStyle.text.small,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: 'Note',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Feeding Schedule',
                        style: MaaruStyle.text.small,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: 'Note',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)))),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Feeding Schedule',
                        style: MaaruStyle.text.small,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        maxLines: 3,
                        decoration: InputDecoration(
                            hintText: 'Note',
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Medication',
                              style: MaaruStyle.text.small,
                            ),
                            SizedBox(
                              height: 20,
                              width: 120,
                            ),
                            Text('No', style: MaaruStyle.text.tiny),
                            Expanded(
                              child: Transform.scale(
                                scale: 1.2,
                                child: SwitchListTile(
                                  activeColor: MaaruColors.buttonTextColor,
                                  inactiveThumbColor:
                                      MaaruColors.buttonTextColor,
                                  // inactiveTrackColor: MaaruColors.buttonTextColor,
                                  controlAffinity:
                                      ListTileControlAffinity.leading,
                                  value: priceupdate_value,
                                  onChanged: (bool priceupdateValue) {
                                    setState(() {
                                      priceupdate_value = priceupdateValue;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(right: 15),
                              child: Text('Yes', style: MaaruStyle.text.tiny),
                            ),
                          ]),
                      SizedBox(
                        height: 40,
                      ),
                      if (priceupdate_value)
                        TextFormField(
                          enabled: status,
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {},
                          controller: _nameEditingController,
                          decoration: InputDecoration(hintText: 'Name'),
                        ),
                      SizedBox(
                        height: 30,
                      ),
                      if (priceupdate_value)
                        TextFormField(
                          enabled: status,
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {},
                          controller: _controller,
                          decoration: InputDecoration(
                              hintText: 'How many times a day?'),
                        ),
                      SizedBox(
                        height: 30,
                      ),
                      if (priceupdate_value)
                        TextFormField(
                          enabled: status,
                          maxLines: 3,
                          decoration: InputDecoration(
                              hintText: 'Note',
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)))),
                        ),
                      SizedBox(
                        height: 30,
                      ),
                      if (priceupdate_value)
                        TextButton.icon(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/images/addvaccine.png',
                            ),
                            label: Text(
                              'Add More Vaccines',
                              style: MaaruStyle.text.medium,
                            )),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (_) =>
                                        CreateRegisterPetProfile2()));
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
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (_) =>
                                          CreateRegisterPetProfile4()));
                                },
                                child: Container(
                                  alignment: Alignment.centerRight,
                                  child:
                                      Image.asset('assets/images/next (2).png'),
                                )),
                          ]),
                    ],
                  )))
        ]))));
  }
}
