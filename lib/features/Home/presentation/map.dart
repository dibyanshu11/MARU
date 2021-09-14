//
//
// import 'dart:html';
//
// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:maaru/core/widget/show_location.dart';
// import 'package:maaru/features/Home/presentation/search_screen.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
// import 'package:permission_handler/permission_handler.dart';
//
//
//
// class Map extends StatefulWidget {
//   @override
//   _MapState createState() => _MapState();
// }
//
// class _MapState extends State<Map> {
//    GoogleMapController mapController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//   @override
//   Widget build(BuildContext context) {
//    return Scaffold(
//         backgroundColor: Colors.green[700],
//         body:GoogleMap(
//           onMapCreated: _onMapCreated,
//           initialCameraPosition: CameraPosition(
//             target: _center,
//             zoom: 11.0,
//           ),
//         ),
//     );
//   }
// }
// class MApDemo extends StatefulWidget {
//
//
//   @override
//   _MApDemoState createState() => _MApDemoState();
// }
// class _MApDemoState extends State<MApDemo> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // This is handled by the search bar itself.
//       resizeToAvoidBottomInset: false,
//       body: Stack(
//         fit: StackFit.expand,
//         children: [
//          Map(),
// SearchLIst()
//
//          // child: SearchBar()),
//           //buildFloatingSearchBar()
//         ],
//       ),
//     );
//   }
// }
// class SearchLIst extends StatelessWidget {
//
//
//   @override
//   Widget build(BuildContext context) {
//     return
//         Scaffold(
//           backgroundColor: Colors.transparent,
//         body: Row(
//           mainAxisAlignment :MainAxisAlignment.spaceAround,
//           children:[
//         FloatingSearchBar(
//           hint: 'Search...',
//           scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//           transitionDuration: const Duration(milliseconds: 800),
//           transitionCurve: Curves.easeInOut,
//           physics: const BouncingScrollPhysics(),
//           //axisAlignment: isPortrait ? 0.0 : -1.0,
//           openAxisAlignment: 0.0,
//          // width: isPortrait ? 600 : 500,
//           debounceDelay: const Duration(milliseconds: 500),
//           onQueryChanged: (query) {
//             // Call your model, bloc, controller here.
//           },
//           // Specify a custom transition to be used for
//           // animating between opened and closed stated.
//           transition: CircularFloatingSearchBarTransition(),
//           actions: [
//             FloatingSearchBarAction(
//               showIfOpened: false,
//               child: CircularButton(
//                 icon: const Icon(Icons.place),
//                 onPressed: () {},
//               ),
//             ),
//             FloatingSearchBarAction.searchToClear(
//               showIfClosed: false,
//             ),
//           ],
//           builder: (context, transition) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Material(
//                 color: Colors.white,
//                 elevation: 4.0,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: Colors.accents.map((color) {
//                     return Container(height: 112, color: color);
//                   }).toList(),
//                 ),
//               ),
//             );
//           },
//         ), FloatingSearchBar(
//           hint: 'Search...',
//           scrollPadding: const EdgeInsets.only(top: 16, bottom: 56),
//           transitionDuration: const Duration(milliseconds: 800),
//           transitionCurve: Curves.easeInOut,
//           physics: const BouncingScrollPhysics(),
//           //axisAlignment: isPortrait ? 0.0 : -1.0,
//           openAxisAlignment: 0.0,
//           // width: isPortrait ? 600 : 500,
//           debounceDelay: const Duration(milliseconds: 500),
//           onQueryChanged: (query) {
//             // Call your model, bloc, controller here.
//           },
//           // Specify a custom transition to be used for
//           // animating between opened and closed stated.
//           transition: CircularFloatingSearchBarTransition(),
//           actions: [
//             FloatingSearchBarAction(
//               showIfOpened: false,
//               child: CircularButton(
//                 icon: const Icon(Icons.place),
//                 onPressed: () {},
//               ),
//             ),
//             FloatingSearchBarAction.searchToClear(
//               showIfClosed: false,
//             ),
//           ],
//           builder: (context, transition) {
//             return ClipRRect(
//               borderRadius: BorderRadius.circular(8),
//               child: Material(
//                 color: Colors.white,
//                 elevation: 4.0,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: Colors.accents.map((color) {
//                     return Container(height: 112, color: color);
//                   }).toList(),
//                 ),
//               ),
//             );
//           },
//         )
//
//         ]));
//   }
// }
//
//
//
// class MyMap2 extends StatefulWidget{
//
//   @override
//   State createState() {
//     // TODO: implement createState
//     return MyMap2State();
//   }
//
// }
//
// class MyMap2State extends State{
//   LatLng latlong=null;
//   CameraPosition _cameraPosition;
//   GoogleMapController _controller ;
//   Set<Marker> _markers={};
//   TextEditingController locationController = TextEditingController();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _cameraPosition=CameraPosition(target: LatLng(0, 0),zoom: 10.0);
//     getCurrentLocation();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return SafeArea(child: Stack(
//       children: [
//         (latlong!=null) ?GoogleMap(
//           initialCameraPosition: _cameraPosition,
//           onMapCreated: (GoogleMapController controller){
//             _controller=(controller);
//             _controller.animateCamera(
//
//                 CameraUpdate.newCameraPosition(_cameraPosition));
//           },
//
//           markers:_markers ,
//
//         ):Container(),
//         Positioned(
//           top: 50.0,
//           right: 15.0,
//           left: 15.0,
//           child: Container(
//             height: 50.0,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(3.0),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey,
//                     offset: Offset(1.0, 5.0),
//                     blurRadius: 10,
//                     spreadRadius: 3)
//               ],
//             ),
//             child: TextField(
//               cursorColor: Colors.black,
//               controller: locationController,
//               decoration: InputDecoration(
//                 icon: Container(
//                   margin: EdgeInsets.only(left: 20, top: 0),
//                   width: 10,
//                   height: 10,
//                   child: Icon(
//                     Icons.location_on,
//                     color: Colors.green,
//                   ),
//                 ),
//                 hintText: "pick up",
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(left: 15.0, top: 12.0),
//               ),
//             ),
//           ),
//         ),
//
//       ],
//
//     ));
//   }
//   Future getCurrentLocation() async {
//     LocationPermission permission = await Geolocator.checkPermission();
//     if (permission != PermissionStatus.granted) {
//       LocationPermission permission = await Geolocator.requestPermission();
//       if (permission != PermissionStatus.granted)
//         getLocation();
//       return;
//     }
//     getLocation();
//   }
//   List<dynamic> results = [];
//   getLocation() async
//   {
//     Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//     print(position.latitude);
//
//
//
//     setState(() {
//       latlong=new LatLng(position.latitude, position.longitude);
//       _cameraPosition=CameraPosition(target:latlong,zoom: 10.0 );
//       if(_controller!=null)
//         _controller.animateCamera(
//
//             CameraUpdate.newCameraPosition(_cameraPosition));
//
//
//
//       _markers.add(Marker(markerId: MarkerId("a"),draggable:true,position: latlong,icon: BitmapDescriptor.defaultMarkerWithHue(
//
//           BitmapDescriptor.hueBlue),onDragEnd: (_currentlatLng){
//         latlong = _currentlatLng;
//
//       }));
//     });
//
//     getCurrentAddress();
//   }
//
//   getCurrentAddress() async
//   {
//    final coordinates = new Coordinates(latlong.latitude, latlong.longitude);
//    results  = await Geocoder.local.findAddressesFromCoordinates(coordinates);
//     var first = results.first;
//     if(first!=null) {
//       var address;
//       address = first.featureName;
//       address =   " $address, ${first.subLocality}" ;
//       address =  " $address, ${first.subLocality}" ;
//       address =  " $address, ${first.locality}" ;
//       address =  " $address, ${first.countryName}" ;
//       address = " $address, ${first.postalCode}" ;
//
//       locationController.text = address;
//     }
//   }
// }