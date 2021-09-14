

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maaru/core/theme/maaru_style.dart';
import 'package:permission_handler/permission_handler.dart';




void main() {
  runApp(MyApp());
  //BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}

final theme = ThemeData(
  textTheme: GoogleFonts.karlaTextTheme(),
  primaryColor: MaaruColors.whiteColor,
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Maaru',
        theme: theme,
        //todo: navigate to SplashScreen
        home: Scaffold(body: SimpleMAp()));
  }
}
class SimpleMAp extends StatefulWidget {


  @override
  _SimpleMApState createState() => _SimpleMApState();
}

class _SimpleMApState extends State<SimpleMAp> {


  static final LatLng _kMapCenter =
  LatLng(19.018255973653343, 72.84793849278007);


  static final CameraPosition _kInitialPosition =
  CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
  LatLng latlong = null;
  CameraPosition _cameraPosition = CameraPosition(target: _kMapCenter);

  GoogleMapController _controller;

  get onMapCreated => getCurrentLocation();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraPosition = CameraPosition(target: LatLng(100, 100), zoom: 10.0);
    getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Demo'),
      ),
      body:
      GoogleMap(
        initialCameraPosition: _kInitialPosition,
        onMapCreated: onMapCreated,
        myLocationEnabled: true,
      ),
    );
  }


  Future getCurrentLocation() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission != PermissionStatus.granted) {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission != PermissionStatus.granted)
        getLocation();
      return;
    }
    getLocation();
  }

//List<Address> results = [];
  getLocation() async
  {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
  }

 setState(()  {
  latlong = new LatLng(position.latitude, position.longitude);
  _cameraPosition = CameraPosition(target: latlong, zoom: 10.0);
  if (_controller != null)
  _controller.animateCamera(

  CameraUpdate.newCameraPosition(_cameraPosition));


  _markers.add(Marker(markerId: MarkerId("a"),
  draggable: true,
  position: latlong,
  icon: BitmapDescriptor.defaultMarkerWithHue(

  BitmapDescriptor.hueBlue),
  onDragEnd: (_currentlatLng) {
  latlong = _currentlatLng;
  }));
  });


}