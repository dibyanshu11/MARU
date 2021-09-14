import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:maaru/core/widget/show_location.dart';
import 'package:maaru/core/widget/widgets.dart';
import 'package:maaru/features/Home/presentation/appoinment_screen.dart';
import 'package:maaru/features/Home/presentation/create_home_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                    borderRadius:
                                        new BorderRadius.circular(25.7),
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
                          SizedBox(
                            height: 30,
                          ),
                          HorizList(),
                          Text(
                            'Upcoming Appoinment',
                            style: MaaruStyle.text.medium,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          ThemedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (_) => AppointmentScreen()));
                            },
                            text: 'View All Appoinments',
                            enabled: true,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            'Upcoming Appoinment',
                            style: MaaruStyle.text.medium,
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          ThemedButton(
                            onPressed: () {},
                            text: ' All messages',
                            enabled: true,
                          ),
                        ])))));
  }
}

class HorizList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 200.0,
      child: new ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return new Card(
              child: new Container(
            width: 200.0,
            child: Image.asset('assets/images/kutta.png'),
            alignment: Alignment.center,
          ));
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
