import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/background_image.dart';
import 'package:maaru/core/widget/round_button.dart';
import 'package:maaru/features/pet_profile/presentation/Register_pet_profile_screen3.dart';

class CreateRegisterPetProfile2 extends StatefulWidget {
  @override
  _CreateRegisterPetProfile2State createState() =>
      _CreateRegisterPetProfile2State();
}

class _CreateRegisterPetProfile2State extends State<CreateRegisterPetProfile2> {
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
              height: 600,
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
                          'Known allergies',
                          style: MaaruStyle.text.small,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          maxLines: 3,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)))),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Pet Vaccines',
                          style: MaaruStyle.text.small,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                            onTap: () {},
                            child: RoundedButton(
                                buttonName: 'Upload Vaccine Record')),
                        SizedBox(
                          height: 40,
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
                        Expanded(
                        child:InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => CreateRegisterPetProfile3()));
                            },
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: Image.asset('assets/images/next (2).png'),
                            )),)
                      ]))),
        ]))));
  }
}
