import 'package:flutter/material.dart';
import 'package:maaru/features/Home/presentation/appoinment_screen.dart';
import 'package:maaru/features/Home/presentation/home_sceen.dart';

class CreateHomeScreen extends StatefulWidget {
  static const String id = 'ArtistHome_screen';
  @override
  _CreateHomeScreenState createState() => _CreateHomeScreenState();
}

class _CreateHomeScreenState extends State<CreateHomeScreen> {
  int currentTab = 0;
  final List<Widget> screens = [

    AppointmentScreen(),
    HomeScreen(),
    //   ArtistProfile()
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Expanded(
            child: Container(
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      MaterialButton(
                        minWidth: 100,
                        onPressed: () {
                          setState(() {
                            currentScreen = HomeScreen();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              size: 30,
                              color: currentTab == 0 ? Colors.red : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen =  AppointmentScreen();
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/kuttaicon3.png',
                              height: 30,
                              color: currentTab == 1 ? Colors.red : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            // currentScreen = Player();
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/kuttaicon4.png',
                              //  height: 30,
                              //color: currentTab == 2 ? Colors.red : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            // currentScreen = Player();
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/message.png',
                              height: 30,
                              color: currentTab == 3 ? Colors.red : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            // currentScreen = Player();
                            currentTab = 4;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              'assets/images/shop.png',
                              height: 30,
                              color: currentTab == 4 ? Colors.red : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
class ProviderSearch extends StatefulWidget {


  @override
  _ProviderSearchState createState() => _ProviderSearchState();
}

class _ProviderSearchState extends State<ProviderSearch> {
  int currentTab =1;
  Widget currentScreen = AppointmentScreen();
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
        minWidth: 40,
        onPressed: () {
      setState(() {
        currentScreen =  AppointmentScreen();
        currentTab = 1;
      });
    },
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
    Image.asset(
    'assets/images/kuttaicon3.png',
    height: 30,
    color: currentTab == 1 ? Colors.red : Colors.grey,
    ),
    ],
    ),
    );
  }
}
