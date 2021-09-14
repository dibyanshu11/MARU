import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/show_location.dart';
import 'package:maaru/features/Home/presentation/home_sceen.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              ShowLocation(),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(25.7),
                        borderSide: new BorderSide()),
                    hintText: 'Search',
                    fillColor: Colors.white,
                    suffixIcon: CircleAvatar(
                      radius: 10,
                      backgroundColor: MaaruColors.buttonTextColor,
                      child: IconButton(
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.only(
                      left: 15.0,
                      top: 0.0,
                      bottom: 0.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
