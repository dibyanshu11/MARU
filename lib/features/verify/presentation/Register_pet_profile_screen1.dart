import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:image_picker/image_picker.dart';

import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/date_picker.dart';

import 'package:maaru/core/widget/screen_icon2.dart';
import 'package:maaru/core/widget/themed_text_field.dart';
import 'package:maaru/features/Home/presentation/home_sceen.dart';
import 'package:maaru/features/register/presentation/signup_screen.dart';
import 'dart:async';

import 'package:maaru/features/verify/presentation/Register_pet_profile_screen2.dart';

class CreateregisterPetProfile1 extends StatefulWidget {
  @override
  _CreateregisterPetProfile1State createState() =>
      _CreateregisterPetProfile1State();
}

class _CreateregisterPetProfile1State extends State<CreateregisterPetProfile1> {
  double initial = 0.0;
  int lineLength = 40;
  final BackgroundColor = Color(0xFF367355);
  @override
  Widget _stepIndicator() {
    return Padding(
        padding: EdgeInsets.fromLTRB(40, 0, 320, 0),
        child: LinearProgressIndicator(
          value: initial,
          backgroundColor: Color(0xFF367355),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          Container(
            alignment: Alignment.centerRight,
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => HomeScreen()));
              },
              child: Text(
                'Skip',
                style: MaaruStyle.text.medium,
              ),
            ),
          ),
          ProfileForm(),
          _stepIndicator(),
          SizedBox(
            width: 20,
          ),
          Container(
            width: 1000,
            height: 1000,
            alignment: FractionalOffset.bottomCenter,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Column(
                  children: [
                    Text(
                      "Gender",
                      style: TextStyle(
                          //  color: MyTheme.secondryColor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    ToggleButton(),
                    new SizedBox(
                      height: 20.0,
                    ),
                    ThemedTextField(
                      "Pet Name", TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onChanged: (text) {
                        //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
                      },
                      //  editingController: _lnameController
                    ),
                    new SizedBox(
                      height: 20.0,
                    ),
                    ThemedTextField(
                      "Bread Type", TextInputType.text,
                      textInputAction: TextInputAction.next,
                      onChanged: (text) {
                        //BlocProvider.of<RegisterBloc>(context).add(LNameChanged(text));
                      },
                      //  editingController: _lnameController
                    ),
                    new SizedBox(
                      height: 20.0,
                    ),
                    ThemeChanges(),
                    new SizedBox(
                      height: 10.0,
                    ),
                    ThemeChanges2(),
                    new SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "Birth Date",
                            style: TextStyle(
                                //  color: MyTheme.secondryColor,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                                // color: MyTheme.secondryColor
                                ),
                          ),
                        ),
                      ],
                    ),
                    new SizedBox(
                      height: 10.0,
                    ),
                    DatePicker(),
                    new SizedBox(
                      height: 40.0,
                    ),
                    Center(
                      child: Text(
                        'Sex',
                        style: TextStyle(
                            //  color: MyTheme.secondryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                            // color: MyTheme.secondryColor
                            ),
                      ),
                    ),
                    new SizedBox(
                      height: 10.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  //  border: Border.all(color: MaaruColors.textColor),
                                  color: MaaruColors.buttonTextColor),
                              child: Text(
                                'Neutered',
                                style: TextStyle(color: MaaruColors.whiteColor),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: MaaruColors.textColor),
                                //  color: Colors.amber,
                              ),
                              child: Text(
                                'Neutered',
                                style: TextStyle(color: MaaruColors.whiteColor),
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: MaaruColors.textColor),

                              // color: Colors.amber,
                            ),
                            child: Text(
                              'Neutered',
                              style: TextStyle(color: MaaruColors.whiteColor),
                            ),
                          )),
                        ]),
                    new SizedBox(
                      height: 40.0,
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => RegisterScreen()));
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
                                        CreateRegisterPetProfile2()));
                              },
                              child: Container(
                                alignment: Alignment.centerRight,
                                child:
                                    Image.asset('assets/images/next (2).png'),
                              )),
                        ]),
                  ],
                )),
          ),
          SizedBox(
            height: 20,
          ),
        ]))));
  }
}

class ProfileForm extends StatefulWidget {
  @override
  _ProfileFormState createState() => _ProfileFormState();
}

class _ProfileFormState extends State<ProfileForm> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double avatarRadius = size.height * 0.30;
    return Container(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            width: size.width,
            alignment: Alignment.center,
            child: Container(
                height: size.height * 0.20,
                width: size.width * 0.4,
                //   color: Colors.red,
                child: InkWell(
                    onTap: () => getImage(),
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: MaaruColors.whiteColor,
                        radius: 70.0,
                        child: CircleAvatar(
                          radius: 65.0,
                          child: ClipOval(
                            child: (_image != null)
                                ? Image.file(_image)
                                : Image.asset('assets/images/dogicon.png'),
                          ),
                          backgroundColor: MaaruColors.whiteColor,

                          // indicator()
                        ),
                      ),
                    ))),
          ),
          SizedBox(height: size.height * 0.01),
        ]));
  }
}

// class indicator extends StatefulWidget {
//   @override
//   _indicatorState createState() => _indicatorState();
// }

// class _indicatorState extends State<indicator> {
//   @override
//   double initial = 0.0;

//   Widget _stepIndicator() {
//     return LinearProgressIndicator(value: initial);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         // floatingActionButton: FloatingActionButton(
//         //   onPressed: () {
//         //     setState(() {
//         //       initial = initial + 0.2;
//         //     });
//         //   },
//         //   child: Text('next'),
//         // ),
//         body: Center(
//             child: Padding(
//       padding: EdgeInsets.all(0.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           _stepIndicator(),
//         ],
//       ),
//     )));
//   }
// }

