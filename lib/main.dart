import 'package:app/pages/favorited.dart';
import 'package:app/pages/homepage.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/settings.dart';
import 'package:app/pages/welcomes/welcome.dart';
import 'package:app/pages/welcomes/welcomeRota.dart';
import 'package:app/pages/welcomes/welcomeTinian.dart';
import 'package:app/util/const.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:app/pages/welcomes/welcomeSaipan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Constants.appName,
      theme: Constants.lightTheme,
      darkTheme: Constants.darkTheme,
      home: Welcome(),
      //home: const MyHomePage(title: 'TRAVELNMI Home Page'),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   static const List<Widget> _pages = <Widget>[
//     userHome(),
//     userFavorite(),
//     userSearch(searchTerms: searchTerms,),
//     userSettings(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     // ignore_for_file: prefer_const_constructors

//     return Scaffold(
//       body: Center(
//         //child: Welcome()
//         child: _pages.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: Container(
//         color: Theme.of(context).primaryColor,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//           child: GNav(
//             backgroundColor: Theme.of(context).primaryColor,
//             color: Theme.of(context).accentColor,
//             activeColor: Theme.of(context).accentColor,
//             tabBackgroundColor: Colors.blue.shade100,

//             // hoverColor: Colors.blue,
//             gap: 8,
//             padding: EdgeInsets.all(16),
//             tabs: [
//               // ignore_for_file: prefer_const_literals_to_create_immutables
//               GButton(
//                 icon: Icons.home_outlined,
//                 text: 'Home',
//               ),
//               GButton(
//                 icon: Icons.bookmark_border,
//                 text: 'Likes',
//               ),
//               GButton(
//                 icon: Icons.search,
//                 text: 'Search',
//               ),
//               GButton(
//                 icon: Icons.settings_outlined,
//                 text: 'Settings',
//               ),
//             ],
//             onTabChange: (index) {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
