// import 'package:flutter/material.dart';
// import 'package:input_history_text_field/input_history_text_field.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// // import 'custom_search_delgates.dart';
// import 'package:flutter/material.dart';
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
//
//
//
//
// typedef OnSearchChanged = Future<List<String>> Function(String);
//
// class SearchWithSuggestionDelegate extends SearchDelegate<String> {
//   ///[onSearchChanged] gets the [query] as an argument. Then this callback
//   ///should process [query] then return an [List<String>] as suggestions.
//   ///Since its returns a [Future] you get suggestions from server too.
//   final OnSearchChanged onSearchChanged;
//
//   ///This [_oldFilters] used to store the previous suggestions. While waiting
//   ///for [onSearchChanged] to completed, [_oldFilters] are displayed.
//   List<String> _oldFilters =  [];
//
//   SearchWithSuggestionDelegate({required String searchFieldLabel, required this.onSearchChanged})
//       : super(searchFieldLabel: searchFieldLabel);
//
//   ///
//
//   final cities = [
//     'Berlin',
//     'Paris',
//     'Munich',
//     'Hamburg',
//     'London',
//   ];
//
//
//
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.arrow_back),
//       onPressed: () => Navigator.pop(context),
//     );
//   }
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () => query = "",
//       ),
//     ];
//   }
//
//   ///OnSubmit in the keyboard, returns the [query]
//   @override
//   void showResults(BuildContext context) {
//     close(context, query);
//   }
//
//   ///Since [showResults] is overridden we can don't have to build the results.
//   @override
//   Widget buildResults(BuildContext context) => Container();
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return FutureBuilder<List<String>>(
//       future: onSearchChanged != null ? onSearchChanged(query) : null,
//       builder: (context, snapshot) {
//         if (snapshot.hasData) _oldFilters = snapshot.data!;
//         return ListView.builder(
//           itemCount: _oldFilters.length,
//           itemBuilder: (context, index) {
//             print(_oldFilters);
//             return ListTile(
//               leading: Icon(Icons.restore),
//               title: Text("${_oldFilters[index]}"),
//               onTap: () => close(context, _oldFilters[index]),
//               trailing: IconButton(icon:Icon(Icons.clear),onPressed: () {
//               },),
//             );
//           },
//         );
//       },
//     );
//   }
// }
