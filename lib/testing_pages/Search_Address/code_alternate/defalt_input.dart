// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:material_floating_search_bar/material_floating_search_bar.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class SearchAddress extends StatefulWidget {
//   const SearchAddress({Key? key}) : super(key: key);
//
//   @override
//   _SearchAddressState createState() => _SearchAddressState();
// }
//
// class _SearchAddressState extends State<SearchAddress> {
//   static const historyLength = 5;
//
// // The "raw" history that we don't access from the UI, prefilled with values
//   List<String> _searchHistory = [
//     'flutter',
//     'widgets',
//   ];
//
// // The filtered & ordered history that's accessed from the UI
//    List<String>? filteredSearchHistory;
//
// // The currently searched-for term
//   String? selectedTerm;
//
//   List<String> filterSearchTerms({
//     required String filter,
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
//     filteredSearchHistory = filterSearchTerms(filter: '');
//   }
//
//   void deleteSearchTerm(String term) {
//     _searchHistory.removeWhere((t) => t == term);
//     filteredSearchHistory = filterSearchTerms(filter: 'null');
//   }
//
//   void putSearchTermFirst(String term) {
//     deleteSearchTerm(term);
//     addSearchTerm(term);
//   }
//
//   FloatingSearchBarController? controller;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = FloatingSearchBarController();
//     filteredSearchHistory = filterSearchTerms(filter: '');
//   }
//
//   @override
//   void dispose() {
//     controller?.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FloatingSearchBar(
//         controller: controller,
//         body: FloatingSearchBarScrollNotifier(
//           child: SearchResultsListView(
//             searchTerm: '',
//             transition: CircularFloatingSearchBarTransition(),
// // Bouncing physics for the search history
//             physics: BouncingScrollPhysics(),
// // Title is displayed on an unopened (inactive) search bar
//             title: Text(
//               selectedTerm ?? 'The Search App',
//               style: Theme.of(context).textTheme.headline6,
//             ),
// // Hint gets displayed once the search bar is tapped and opened
//             hint: 'Search and find out...',
//           ),
//         ),
//         actions: [
//           FloatingSearchBarAction.searchToClear(),
//         ],
//         onQueryChanged: (query) {
//           setState(() {
//             filteredSearchHistory = filterSearchTerms(filter: query);
//           });
//         },
//         onSubmitted: (query) {
//           setState(() {
//             addSearchTerm(query);
//             selectedTerm = query;
//           });
//           controller?.close();
//         }, builder: (context, transition) {
//         return ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Material(
//             color: Colors.white,
//             elevation: 4,
//             child: Builder(
//               builder: (context) {
//                 if (filteredSearchHistory!.isEmpty &&
//                     controller!.query.isEmpty) {
//                   return Container(
//                     height: 56,
//                     width: double.infinity,
//                     alignment: Alignment.center,
//                     child: Text(
//                       'Start searching',
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                       style: Theme.of(context).textTheme.caption,
//                     ),
//                   );
//                 }else if (filteredSearchHistory!.isEmpty) {
//                   return ListTile(
//                     title: Text(controller!.query),
//                     leading: const Icon(Icons.search),
//                     onTap: () {
//                       setState(() {
//                         addSearchTerm(controller!.query);
//                         selectedTerm = controller?.query;
//                       });
//                       controller?.close();
//                     },
//                   );
//                 }else {
//                   return Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: filteredSearchHistory!
//                         .map(
//                           (term) => ListTile(
//                         title: Text(
//                           term,
//                           maxLines: 1,
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                         leading: const Icon(Icons.history),
//                         trailing: IconButton(
//                           icon: const Icon(Icons.clear),
//                           onPressed: () {
//                             setState(() {
//                               deleteSearchTerm(term);
//
//                             });
//                           },
//                         ),
//                         onTap: () {
//                           setState(() {
//                             putSearchTermFirst(term);
//                             selectedTerm = term;
//                           });
//                           controller?.close();
//                         },
//                       ),
//                     )
//                         .toList(),
//                   );
//                 }
//               },
//             ),
//           ),
//         );
//       },
//       ),
//     );
//   }
// }
//
// class SearchResultsListView extends StatelessWidget {
//   final String searchTerm;
//
//   const SearchResultsListView({Key? key, required this.searchTerm, required Text title, required CircularFloatingSearchBarTransition transition, required BouncingScrollPhysics physics, required String hint})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     if (searchTerm == null) {
//       return Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Icon(
//               Icons.search,
//               size: 64,
//             ),
//             Text("Search")
//           ],
//         ),
//       );
//     }
//     return Container();
//     //   ListView(
//     //   children: List.generate(
//     //       3,
//     //       (index) => ListTile(
//     //             trailing: Text("hii"),
//     //           )),
//     // );
//   }
// }
//
// // class SearchWithSuggestionDelegate extends SearchDelegate<String> {
// //
// //
// //
// //   final cities = [
// //     'Berlin',
// //     'Paris',
// //     'Munich',
// //     'Hamburg',
// //     'London',
// //   ];
// //   final recentSearch = [
// //     'Berlin',
// //     'Munich',
// //     'London',
// //   ];
// //
// //
// //
// //
// //   @override
// //   List<Widget> buildActions(BuildContext context) => [
// //         IconButton(
// //           icon: Icon(Icons.clear),
// //           onPressed: () {
// //             if (query.isEmpty) {
// //               close(context, null!);
// //             } else {
// //               query = '';
// //               showSuggestions(context);
// //             }
// //           },
// //         )
// //       ];
// //
// //   @override
// //   Widget? buildLeading(BuildContext context) {
// //     IconButton(
// //       onPressed: () => close(context, null!),
// //       icon: Icon(Icons.arrow_back_ios_new),
// //     );
// //   }
// //
// //   @override
// //   Widget buildResults(BuildContext context) => Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(Icons.location_city, size: 120),
// //             const SizedBox(height: 48),
// //             Text(
// //               query,
// //               style: TextStyle(
// //                 color: Colors.black,
// //                 fontSize: 64,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //           ],
// //         ),
// //       );
// //
// //   @override
// //   Widget buildSuggestions(BuildContext context) {
// //     final suggestions = query.isEmpty
// //         ? recentSearch
// //         : cities.where((city) {
// //             final cityLower = city.toLowerCase();
// //             final queryLower = query.toLowerCase();
// //
// //             return cityLower.startsWith(queryLower);
// //           }).toList();
// //
// //     return buildSuggestionsSuccess(suggestions);
// //   }
// //
// //   Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
// //       itemCount: suggestions.length,
// //       itemBuilder: (context, index) {
// //         final suggestion = suggestions[index];
// //         final queryText = suggestion.substring(0, query.length);
// //         final remainingText = suggestion.substring(query.length);
// //
// //         return ListTile(
// //           onTap: () {
// //             query = suggestion;
// //
// //             close(context, suggestion);
// //             //showResults(context);
// //
// //             // 3. Navigate to Result Page
// //             //  Navigator.push(
// //             //   context,
// //             //   MaterialPageRoute(
// //             //     builder: (BuildContext context) => ResultPage(suggestion),
// //             //   ),
// //             // )
// //           },
// //           leading: Icon(Icons.location_city),
// //           //title: Text(suggestion),
// //           title: RichText(
// //             text: TextSpan(
// //               text: queryText,
// //               style: TextStyle(
// //                   color: Colors.black,
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold),
// //               children: [
// //                 TextSpan(
// //                   text: remainingText,
// //                   style: TextStyle(
// //                     color: Colors.grey,
// //                     fontSize: 18,
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           // trailing: IconButton(icon: Icon(Icons.clear,),onPressed: (){deleteSearchTerm(queryText);},),
// //         );
// //       });
// // }
