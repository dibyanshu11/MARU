import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/background_image.dart';
import 'package:maaru/features/pet_profile/presentation/register_pet_profile4.dart';

import 'package:toggle_switch/toggle_switch.dart';

class CreateRegisterPetProfile3 extends StatefulWidget {
  @override
  _CreateRegisterPetProfile3State createState() =>
      _CreateRegisterPetProfile3State();
}

class _CreateRegisterPetProfile3State extends State<CreateRegisterPetProfile3> {
  TextEditingController _nameEditingController;
  TextEditingController _controller;

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
                                width: 100,
                              ),
                              Text('Yes', style: MaaruStyle.text.tiny),
                              ToggleSwitch(
                                minWidth: 25.0,
                                minHeight: 25,
                                cornerRadius: 200.0,
                                activeBgColors: [
                                  [MaaruColors.buttonTextColor],
                                  [MaaruColors.buttonTextColor]
                                ],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.grey,
                                inactiveFgColor: Colors.white,
                                initialLabelIndex: 1,
                                totalSwitches: 2,
                                radiusStyle: true,
                                onToggle: (index) {
                                  print('switched to: $index');
                                },
                              ),
                              Text('No', style: MaaruStyle.text.tiny),
                            ]),
                        SizedBox(
                          height: 40,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {},
                          controller: _nameEditingController,
                          decoration: InputDecoration(hintText: 'Name'),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          onChanged: (text) {},
                          controller: _controller,
                          decoration: InputDecoration(
                              hintText: 'How many times a day?'),
                        ),
                        SizedBox(
                          height: 30,
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
                        InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => CreateRegisterPetProfile4()));
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/images/next (2).png'),
                            )),
                      ])))
        ]))));
  }
}
