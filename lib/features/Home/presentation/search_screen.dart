// import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
//
// class SearchBar extends StatefulWidget {
//   @override
//   _SearchBarState createState() => _SearchBarState();
// }
//
// class _SearchBarState extends State<SearchBar> {
//   static const historyLength = 5;
//
// // The "raw" history that we don't access from the UI, prefilled with values
//   List<String> _searchHistory = [
//     'fuchsia',
//     'flutter',
//     'widgets',
//     'resocoder',
//   ];
// // The filtered & ordered history that's accessed from the UI
//   List<String> filteredSearchHistory;
//
// // The currently searched-for term
//   String selectedTerm;
//
//   List<String> filterSearchTerms({
//     @required String filter,
//   }) {
//     if (filter != null && filter.isNotEmpty) {
//       // Reversed because we want the last added items to appear first in the UI
//       return _searchHistory.reversed
//           .where((term) => term.startsWith(filter))
//           .toList();
//     } else {
//       return _searchHistory.reversed.toList();
//     }
//   }
//
//   void addSearchTerm(String term) {
//     if (_searchHistory.contains(term)) {
//       // This method will be implemented soon
//       putSearchTermFirst(term);
//       return;
//     }
//     _searchHistory.add(term);
//     if (_searchHistory.length > historyLength) {
//       _searchHistory.removeRange(0, _searchHistory.length - historyLength);
//     }
//     // Changes in _searchHistory mean that we have to update the filteredSearchHistory
//     filteredSearchHistory = filterSearchTerms(filter: null);
//   }
//
//   void deleteSearchTerm(String term) {
//     _searchHistory.removeWhere((t) => t == term);
//     filteredSearchHistory = filterSearchTerms(filter: null);
//   }
//
//   void putSearchTermFirst(String term) {
//     deleteSearchTerm(term);
//     addSearchTerm(term);
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     filteredSearchHistory = filterSearchTerms(filter: null);
//   }
//
//   FloatingSearchBarController controller;
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//         body:
//     FloatingSearchBar(
//             controller: controller,
//             body: FloatingSearchBarScrollNotifier(
//               // child: SearchResultsListView(
//               //      searchTerm: selectedTerm,
//
//             ),
//             transition: CircularFloatingSearchBarTransition(),
// // Bouncing physics for the search history
//             physics: BouncingScrollPhysics(),
//             leadingActions: [Icon(Icons.search)],
// // Title is displayed on an unopened (inactive) search bar
//             title: Text(
//               selectedTerm ?? 'The Search and find',
//               style: Theme.of(context).textTheme.headline6,
//             ),
//
// // Hint gets displayed once the search bar is tapped and opened
//             // hint: 'Search and find out...',
//
//             actions: [
//               Icon(Icons.location_searching),
//               //  FloatingSearchBarAction.searchToClear(
//               //  showIfClosed: false,
//               //  ),
//
//               // FloatingSearchBarAction.searchToClear(),
//             ],
//             onQueryChanged: (query) {
//               setState(() {
//                 filteredSearchHistory = filterSearchTerms(filter: query);
//               });
//             },
//             onSubmitted: (query) {
//               setState(() {
//                 addSearchTerm(query);
//                 selectedTerm = query;
//               });
//               controller.close();
//             },
//             builder: (context, transition) {
//               return ClipRect(
//                 // borderRadius: BorderRadius.circular(8),
//                 child: Material(
//                     color: Colors.white,
//                     elevation: 4,
//                     child: Builder(builder: (context) {
//                       if (filteredSearchHistory.isEmpty &&
//                           controller.query.isEmpty) {
//                         return Container(
//                           height: 56,
//                           width: double.infinity,
//                           alignment: Alignment.center,
//                           child: Text(
//                             'Start searching',
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: Theme.of(context).textTheme.caption,
//                           ),
//                         );
//                       } else if (filteredSearchHistory.isEmpty) {
//                         return ListTile(
//                           title: Text(controller.query),
//                           leading: const Icon(Icons.location_searching),
//                           onTap: () {
//                             setState(() {
//                               addSearchTerm(controller.query);
//                               selectedTerm = controller.query;
//                             });
//                             controller.close();
//                           },
//                         );
//                       } else {
//                         return Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: filteredSearchHistory
//                               .map(
//                                 (term) => ListTile(
//                                   title: Text(
//                                     term,
//                                     maxLines: 1,
//                                     overflow: TextOverflow.ellipsis,
//                                   ),
//                                   leading: const Icon(Icons.history),
//                                   trailing: IconButton(
//                                     icon: const Icon(Icons.clear),
//                                     onPressed: () {
//                                       setState(() {
//                                         deleteSearchTerm(term);
//                                       });
//                                     },
//                                   ),
//                                   onTap: () {
//                                     setState(() {
//                                       putSearchTermFirst(term);
//                                       selectedTerm = term;
//                                     });
//                                     controller.close();
//                                   },
//                                 ),
//                               )
//                               .toList(),
//                         );
//                       }
//                     })),
//               );
//             }));
//   }
// }
//
// class SearchResultsListView extends StatefulWidget {
//   final String searchTerm;
//
//   const SearchResultsListView({Key key, this.searchTerm}) : super(key: key);
//
//   @override
//   _SearchResultsListViewState createState() => _SearchResultsListViewState();
// }
//
// class _SearchResultsListViewState extends State<SearchResultsListView> {
//   GoogleMapController mapController;
//
//   final LatLng _center = const LatLng(45.521563, -122.677433);
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // final fsb = FloatingSearchBar.of(context);
//     return Scaffold(
//       body: Padding(padding:EdgeInsets.fromLTRB(0, 0, 0, 0),
//      child: GoogleMap(
//         onMapCreated: _onMapCreated,
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 11.0,
//         ),
//       ),
//     ));
//
//     // return ListView(
//     // padding: EdgeInsets.only(top: fsb.height + fsb.margins.vertical),
//     // // children: List.generate(
//     // //
//     // // (index) => ListTile(
//     // // title: Text('$searchTerm search result'),
//     // // subtitle: Text(index.toString()),
//     // // ),
//     // // ),
//     // );
//   }
// }
