// import 'package:flutter/material.dart';
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
//
//
// // Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
//   //     itemCount: suggestions.length,
//   //     itemBuilder: (context, index) {
//   //       final suggestion = suggestions[index];
//   //       final queryText = suggestion.substring(0, query.length);
//   //       final remainingText = suggestion.substring(query.length);
//   //
//   //       return ListTile(
//   //         onTap: (){
//   //           query = suggestion;
//   //
//   //           close(context, suggestion);
//   //           //showResults(context);
//   //
//   //           // 3. Navigate to Result Page
//   //           //  Navigator.push(
//   //           //   context,
//   //           //   MaterialPageRoute(
//   //           //     builder: (BuildContext context) => ResultPage(suggestion),
//   //           //   ),
//   //           // )
//   //         },
//   //         leading: Icon(Icons.location_city),
//   //         //title: Text(suggestion),
//   //         title: RichText(
//   //           text: TextSpan(text: queryText,
//   //             style: TextStyle(
//   //                 color: Colors.black,
//   //                 fontSize: 18,
//   //                 fontWeight: FontWeight.bold
//   //             ),
//   //             children: [
//   //               TextSpan(
//   //                 text: remainingText,
//   //                 style: TextStyle(
//   //                   color: Colors.grey,
//   //                   fontSize: 18,
//   //                 ),
//   //               ),
//   //             ],
//   //           ),
//   //         ),
//   //       );
//   //     });
