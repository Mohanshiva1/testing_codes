// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:input_history_text_field/input_history_text_field.dart';
// import 'package:searchfield/searchfield.dart';
//
// class DropDownBox extends StatefulWidget {
//   const DropDownBox({Key? key}) : super(key: key);
//
//   @override
//   _DropDownBoxState createState() => _DropDownBoxState();
// }
//
// class _DropDownBoxState extends State<DropDownBox> {
//   String? _selectedValue;
//
//   TextEditingController _controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           Positioned(
//             child: InputHistoryTextField(
//               decoration: InputDecoration(
//                 label: Text("Search"),
//               ),
//               enableHistory: true,
//               enableSuggestions: true,
//               enableSave: true,
//               historyKey: "5",
//               listStyle: ListStyle.List,
//               lockBackgroundColor: Colors.brown.withAlpha(90),
//               lockTextColor: Colors.black,
//               lockItems: [
//                 "Flutter",
//                 "Ios",
//                 "Java",
//               ],
//               showHistoryIcon: true,
//               deleteIconColor: Colors.white,
//               textColor: Colors.black,
//               backgroundColor: Colors.white,
//             ),
//             top: height * 0.400,
//             left: width * 0.044,
//             right: width * 0.044,
//           ),
//           Positioned(
//             top: height * 0.800,
//             left: width * 0.044,
//             right: width * 0.044,
//             child: ElevatedButton(
//               onPressed: () {},
//               child: Text("Click"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// //   Scaffold(
// //   body: Column(
// //     children: [
// //       SizedBox(
// //         width: double.infinity,
// //         height: 400,
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Padding(
// //               padding: EdgeInsets.all(20),
// //               child: Text(
// //                 "Select Language",
// //                 style: TextStyle(
// //                   fontSize: 16,
// //                   color: Colors.blueGrey,
// //                 ),
// //               ),
// //             ),
// //             // Container(
// //             //   margin: EdgeInsets.symmetric(horizontal: 20),
// //             //   decoration: BoxDecoration(
// //             //       color: Colors.white,
// //             //       borderRadius: BorderRadius.circular(10),
// //             //       boxShadow: [
// //             //         BoxShadow(
// //             //           color: Colors.grey.withOpacity(0.2),
// //             //           blurRadius: 10,
// //             //           offset: Offset(0, 10),
// //             //         )
// //             //       ]),
// //             //   child: SearchField(
// //             //     controller: _controller,
// //             //     hint: "Search",
// //             //     searchInputDecoration: InputDecoration(
// //             //
// //             //       enabledBorder: OutlineInputBorder(
// //             //         borderSide: BorderSide(
// //             //             color: Colors.blueGrey.shade200, width: 1),
// //             //       ),
// //             //       focusedBorder: OutlineInputBorder(
// //             //         borderSide: BorderSide(
// //             //             color: Colors.blueGrey.shade200,
// //             //           width: 2,
// //             //         ),
// //             //         borderRadius: BorderRadius.circular(10),
// //             //       ),
// //             //     ),
// //             //     itemHeight: 50,
// //             //     maxSuggestionsInViewPort: 5,
// //             //
// //             //     suggestionsDecoration: BoxDecoration(
// //             //       borderRadius: BorderRadius.circular(20),
// //             //     ),
// //             //     onTap: (value){
// //             //       setState(() {
// //             //       _selectedValue = value;
// //             //       });
// //             //     },
// //             //
// //             //     suggestions: [
// //             //       "Flutter",
// //             //       "Ios",
// //             //       "Java",
// //             //       "Python",
// //             //       "C++",
// //             //       "Android",
// //             //       "Html",
// //             //       "JavaScript",
// //             //     ],
// //             //   ),
// //             // ),
// //             Container(
// //               margin: EdgeInsets.symmetric(horizontal: 20),
// //               decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.circular(10),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.grey.withOpacity(0.2),
// //                       blurRadius: 10,
// //                       offset: Offset(0, 10),
// //                     )
// //                   ]),
// //               child: InputHistoryTextField(
// //                 decoration: InputDecoration(
// //                   label: Text("Search"),
// //
// //                 ),
// //                 enableHistory: true,
// //                 enableSuggestions: false,
// //                 enableSave: true,
// //                 historyKey: "",
// //                 listStyle: ListStyle.List,
// //                 lockBackgroundColor: Colors.brown.withAlpha(90),
// //                 lockTextColor: Colors.black,
// //                 lockItems: [
// //                   "Flutter",
// //                   "Ios",
// //                   "Java",
// //                   "Python",
// //                   "C++",
// //                   "Android",
// //                   "Html",
// //                   "JavaScript",
// //                 ],
// //                 showHistoryIcon: true,
// //                 deleteIconColor: Colors.white,
// //                 textColor: Colors.white,
// //                 backgroundColor: Colors.pinkAccent,
// //
// //
// //               ),
// //             ),
// //             Stack(
// //               children: [
// //                 Positioned(
// //                   child: Container(
// //                     margin: EdgeInsets.symmetric(horizontal: 20),
// //
// //                     decoration: BoxDecoration(
// //                         color: Colors.white,
// //                         borderRadius: BorderRadius.circular(30),
// //                         boxShadow: [
// //                           BoxShadow(
// //                             color: Colors.grey.withOpacity(0.2),
// //                             blurRadius: 10,
// //                             offset: Offset(0, 10),
// //                           )
// //                         ]),
// //                     child: InputHistoryTextField(
// //                       decoration: InputDecoration(
// //                         label: Text("Search"),
// //                       ),
// //                       enableHistory: true,
// //                       enableSuggestions: true,
// //                       enableSave: true,
// //                       historyKey: "3",
// //                       listStyle: ListStyle.List,
// //                       lockBackgroundColor: Colors.brown.withAlpha(90),
// //                       lockTextColor: Colors.black,
// //                       lockItems: [
// //                         "Flutter",
// //                         "Ios",
// //                         "Java",
// //                         "Python",
// //
// //                       ],
// //                       showHistoryIcon: true,
// //                       deleteIconColor: Colors.white,
// //                       textColor: Colors.white,
// //                       backgroundColor: Colors.white12,
// //                     ),
// //                   ),
// //                   top: height * 0.400,
// //                   left: width * 0.044,
// //                   right: width * 0.044,
// //                 ),
// //               ],
// //             ),
// //             Container(
// //               margin: EdgeInsets.symmetric(horizontal: 20),
// //               decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.circular(10),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.grey.withOpacity(0.2),
// //                       blurRadius: 10,
// //                       offset: Offset(0, 10),
// //                     )
// //                   ]),
// //               child: InputHistoryTextField(
// //                 decoration: InputDecoration(
// //                   label: Text("Search"),
// //
// //                 ),
// //                 enableHistory: true,
// //                 enableSuggestions: false,
// //                 enableSave: true,
// //                 historyKey: "",
// //                 listStyle: ListStyle.List,
// //                 lockBackgroundColor: Colors.brown.withAlpha(90),
// //                 lockTextColor: Colors.black,
// //                 lockItems: [
// //                   "Flutter",
// //                   "Ios",
// //                   "Java",
// //                   "Python",
// //                   "C++",
// //                   "Android",
// //                   "Html",
// //                   "JavaScript",
// //                 ],
// //                 showHistoryIcon: true,
// //                 deleteIconColor: Colors.white,
// //                 textColor: Colors.white,
// //                 backgroundColor: Colors.pinkAccent,
// //
// //
// //               ),
// //             ),
// //
// //           ],
// //         ),
// //       )
// //     ],
// //   ),
// // );
//
// //
// import 'package:flutter/material.dart';
// import 'package:input_history_text_field/input_history_text_field.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import 'custom_search_delgates.dart';
//
//
//
// class Home extends StatefulWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//
//
//   Future<void> _showSearch() async {
//     final searchText = await showSearch<String>(
//       context: context,
//       delegate: SearchWithSuggestionDelegate(
//         onSearchChanged: _getRecentSearchesLike, searchFieldLabel: '',
//       ),
//     );
//
//     //Save the searchText to SharedPref so that next time you can use them as recent searches.
//     await _saveToRecentSearches(searchText!);
//
//     //Do something with searchText. Note: This is not a result.
//   }
//
//   Future<List<String>> _getRecentSearchesLike(String query) async {
//     final pref = await SharedPreferences.getInstance();
//     final allSearches = pref.getStringList("recentSearches");
//     return allSearches!.where((search) => search.startsWith(query)).toList();
//   }
//
//   Future<void> _saveToRecentSearches(String searchText) async {
//     if (searchText == null) return; //Should not be null
//     final pref = await SharedPreferences.getInstance();
//
//     //Use `Set` to avoid duplication of recentSearches
//     Set<String> allSearches =
//         pref.getStringList("recentSearches")?.toSet() ?? {};
//
//     //Place it at first in the set
//     allSearches = {searchText, ...allSearches};
//     pref.setStringList("recentSearches", allSearches.toList());
//   }
//
//   // InputHistoryController controller =  InputHistoryController as InputHistoryController;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Search Demo"),
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: _showSearch,
//           ),
//         ],
//       ),
//       body: Center(
//         child: TextField(
//
//         ),
//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:material_floating_search_bar/material_floating_search_bar.dart';
//
// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }
// //
// // class _HomePageState extends State<HomePage> {
// //   static const historyLength = 5;
// //
// //   List<String> _searchHistory = [
// //     'fuchsia',
// //     'flutter',
// //     'widgets',
// //     'resocoder',
// //   ];
// //
// //   late List<String> filteredSearchHistory;
// //
// //     String? selectedTerm;
// //
// //   List<String> filterSearchTerms({
// //     required String filter,
// //   }) {
// //     if (filter != "" && filter.isNotEmpty) {
// //       return _searchHistory.reversed
// //           .where((term) => term.startsWith(filter))
// //           .toList();
// //     } else {
// //       return _searchHistory.reversed.toList();
// //     }
// //   }
// //
// //   void addSearchTerm(String term) {
// //     if (_searchHistory.contains(term)) {
// //       putSearchTermFirst(term);
// //       return;
// //     }
// //
// //     _searchHistory.add(term);
// //     if (_searchHistory.length > historyLength) {
// //       _searchHistory.removeRange(0, _searchHistory.length - historyLength);
// //     }
// //
// //     filteredSearchHistory = filterSearchTerms(filter: "");
// //   }
// //
// //   void deleteSearchTerm(String term) {
// //     _searchHistory.removeWhere((t) => t == term);
// //     filteredSearchHistory = filterSearchTerms(filter: "");
// //   }
// //
// //   void putSearchTermFirst(String term) {
// //     deleteSearchTerm(term);
// //     addSearchTerm(term);
// //   }
// //
// //   late FloatingSearchBarController controller;
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //     selectedTerm;
// //     controller = FloatingSearchBarController();
// //     filteredSearchHistory = filterSearchTerms(filter: "");
// //
// //   }
// //
// //   @override
// //   void dispose() {
// //     controller.dispose();
// //     super.dispose();
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FloatingSearchBar(
// //         controller: controller,
// //         body: FloatingSearchBarScrollNotifier(
// //           child: SearchResultsListView(
// //             searchTerm: selectedTerm!, key: Key(""),
// //           ),
// //         ),
// //         transition: CircularFloatingSearchBarTransition(),
// //         physics: BouncingScrollPhysics(),
// //         title: Text(
// //           selectedTerm ?? 'The Search App',
// //           style: Theme.of(context).textTheme.headline6,
// //         ),
// //         hint: 'Search and find out...',
// //         actions: [
// //           FloatingSearchBarAction.searchToClear(),
// //         ],
// //         onQueryChanged: (query) {
// //           setState(() {
// //             filteredSearchHistory = filterSearchTerms(filter: query);
// //           });
// //         },
// //         onSubmitted: (query) {
// //           setState(() {
// //             addSearchTerm(query);
// //             selectedTerm = query;
// //           });
// //           controller.close();
// //         },
// //         builder: (context, transition) {
// //           return ClipRRect(
// //             borderRadius: BorderRadius.circular(8),
// //             child: Material(
// //               color: Colors.white,
// //               elevation: 4,
// //               child: Builder(
// //                 builder: (context) {
// //                   if (filteredSearchHistory.isEmpty &&
// //                       controller.query.isEmpty) {
// //                     return Container(
// //                       height: 56,
// //                       width: double.infinity,
// //                       alignment: Alignment.center,
// //                       child: Text(
// //                         'Start searching',
// //                         maxLines: 1,
// //                         overflow: TextOverflow.ellipsis,
// //                         style: Theme.of(context).textTheme.caption,
// //                       ),
// //                     );
// //                   } else if (filteredSearchHistory.isEmpty) {
// //                     return ListTile(
// //                       title: Text(controller.query),
// //                       leading: const Icon(Icons.search),
// //                       onTap: () {
// //                         setState(() {
// //                           addSearchTerm(controller.query);
// //                           selectedTerm = controller.query;
// //                         });
// //                         controller.close();
// //                       },
// //                     );
// //                   } else {
// //                     return Column(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: filteredSearchHistory
// //                           .map(
// //                             (term) => ListTile(
// //                           title: Text(
// //                             term,
// //                             maxLines: 1,
// //                             overflow: TextOverflow.ellipsis,
// //                           ),
// //                           leading: const Icon(Icons.history),
// //                           trailing: IconButton(
// //                             icon: const Icon(Icons.clear),
// //                             onPressed: () {
// //                               setState(() {
// //                                 deleteSearchTerm(term);
// //                               });
// //                             },
// //                           ),
// //                           onTap: () {
// //                             setState(() {
// //                               putSearchTermFirst(term);
// //                               selectedTerm = term;
// //                             });
// //                             controller.close();
// //                           },
// //                         ),
// //                       )
// //                           .toList(),
// //                     );
// //                   }
// //                 },
// //               ),
// //             ),
// //           );
// //         },
// //       ),
// //     );
// //   }
// // }
// //
// // class SearchResultsListView extends StatelessWidget {
// //   final String searchTerm;
// //
// //   const SearchResultsListView({
// //     required Key key,
// //     required this.searchTerm,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     if (searchTerm == "") {
// //       return Center(
// //         child: Column(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             Icon(
// //               Icons.search,
// //               size: 64,
// //             ),
// //             Text(
// //               'Start searching',
// //               style: Theme.of(context).textTheme.headline5,
// //             )
// //           ],
// //         ),
// //       );
// //     }
// //
// //     final fsb = FloatingSearchBar.of(context);
// //
// //     return ListView(
// //       padding: EdgeInsets.only(top: 30 ,),
// //       children: List.generate(
// //         50,
// //             (index) => ListTile(
// //           title: Text('$searchTerm search result'),
// //           subtitle: Text(index.toString()),
// //         ),
// //       ),
// //     );
// //   }
// // }
