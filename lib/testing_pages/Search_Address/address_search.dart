// import 'package:flutter/material.dart';
// import 'package:testing_codes/testing_pages/Search_Address/place_service.dart';
//
// class AddressSearch extends SearchDelegate<Suggestion> {
//
//   final sessionToken;
//   late PlaceApiProvider apiClient;
//
//
//   AddressSearch(this.sessionToken){
//     apiClient = PlaceApiProvider(sessionToken);
//   }
//
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         tooltip: 'Clear',
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       )
//     ];
//   }
//
//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       tooltip: 'Back',
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//
//       },
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     throw UnimplementedError();
//   }
//
//
//
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     return FutureBuilder(
//       // We will put the api call here
//       future: null,
//       builder: (context,snapshot, ) => query == ''
//           ? Container(
//               padding: EdgeInsets.all(16.0),
//               child: Text('Search address'),
//             )
//           : snapshot.hasData
//               ? ListView.builder(
//                   itemBuilder: (context, index) => ListTile(
//                     // we will display the data returned from our future here
//                     title: Text(snapshot.data.toString()[index]),
//                     onTap: () {
//                       // close(context, snapshot.data.[index]);
//                     },
//                   ),
//                   // itemCount: (snapshot.data.length),
//                 )
//               : Center(child: CircularProgressIndicator())
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../Drop_Down/custom_search_delgates.dart';
//
// class SearchAddress extends StatefulWidget {
//   const SearchAddress({Key? key}) : super(key: key);
//
//   @override
//   _SearchAddressState createState() => _SearchAddressState();
// }
//
// class _SearchAddressState extends State<SearchAddress> {
//
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             setState(() async {
//               showSearch(context: context, delegate: CitySearch());
//              // final results = await showSearch(context: context, delegate: CitySearch());
//               //print('Result: $results');
//             });
//           },
//           child: Text("Search..."),
//         ),
//       ),
//     );
//   }
// }
//
// class CitySearch extends SearchDelegate<String> {
//
//
//
//
//   final cities = [
//     'Berlin',
//     'Paris',
//     'Munich',
//     'Hamburg',
//     'London',
//   ];
//   final recentCities = [
//     'Berlin',
//     'Munich',
//     'London',
//   ];
//
//   @override
//   List<Widget> buildActions(BuildContext context) => [
//     IconButton(
//       icon: Icon(Icons.clear),
//       onPressed: () {
//         if (query.isEmpty) {
//           close(context, null!);
//         } else {
//           query = '';
//           showSuggestions(context);
//         }
//       },
//     )
//   ];
//
//   @override
//   Widget? buildLeading(BuildContext context) {
//     IconButton(
//       onPressed: () => close(context, null!),
//       icon: Icon(Icons.arrow_back_ios_new),
//     );
//   }
//
//   @override
//   Widget buildResults(BuildContext context) => Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Icon(Icons.location_city, size: 120),
//             const SizedBox(height: 48),
//             Text(
//               query,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 64,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       );
//
//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions = query.isEmpty
//         ? recentCities
//         : cities.where((city) {
//       final cityLower = city.toLowerCase();
//       final queryLower = query.toLowerCase();
//
//       return cityLower.startsWith(queryLower);
//
//     }).toList();
//
//     return buildSuggestionsSuccess(suggestions);
//   }
//
//   Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (context, index) {
//         final suggestion = suggestions[index];
//         final queryText = suggestion.substring(0, query.length);
//         final remainingText = suggestion.substring(query.length);
//
//         return ListTile(
//           onTap: (){
//             query = suggestion;
//
//             close(context, suggestion);
//             //showResults(context);
//
//             // 3. Navigate to Result Page
//             //  Navigator.push(
//             //   context,
//             //   MaterialPageRoute(
//             //     builder: (BuildContext context) => ResultPage(suggestion),
//             //   ),
//             // )
//           },
//           leading: Icon(Icons.location_city),
//           //title: Text(suggestion),
//           title: RichText(
//             text: TextSpan(text: queryText,
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold
//               ),
//               children: [
//                 TextSpan(
//                   text: remainingText,
//                   style: TextStyle(
//                     color: Colors.grey,
//                     fontSize: 18,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       });
// }


