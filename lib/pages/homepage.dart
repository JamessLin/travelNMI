import 'dart:ui';

import 'package:app/pages/island/islandDetails.dart';
import 'package:app/pages/map.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/settings.dart';
import 'package:app/pages/welcomes/welcome.dart';
import 'package:app/util/model/saipan.dart';
import 'package:app/util/places.dart';
import 'package:app/widgets/slider2.dart';
import 'package:app/widgets/slider3.dart';
import 'package:app/widgets/verticle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../util/model/selectedPlace.dart';
import '../widgets/slider.dart';
import 'big_app_text.dart';
import 'favorited.dart';

class userHome extends StatefulWidget {
  const userHome({Key? key}) : super(key: key);

  @override
  State<userHome> createState() => userHomeState();
}

class userHomeState extends State<userHome> with TickerProviderStateMixin {
  List<Category> categories = Saipan.getMockCategories();
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        // body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              top: 70,
            ),
            child: Row(
              children: [
                Text(
                  'Travel NMI',
                  // Hafa Adai, 你好, 안녕!
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins',
                    fontSize: 17,
                  ),
                ),
                // Icon(Icons.menu, size: 30, color: Colors.black54),
                Expanded(child: Container()),

                IconButton(
                  onPressed: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  icon: Icon(Icons.search),
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 30,
                  height: 30,
                  child: Image(
                    image: AssetImage('assets/images/pfp.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: const BigAppText(text: "Discover", size: 35),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Hafa Adai, 你好, 안녕!',
              // Hafa Adai, 你好, 안녕!
              style: TextStyle(
                color: Colors.grey,
                fontFamily: 'Poppins',
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            child: Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                  controller: _tabController,
                  isScrollable: true,
                  labelPadding: const EdgeInsets.only(left: 20, right: 20),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicator: CircleTabIndicator(color: Colors.black, radius: 4),
                  tabs: [
                    Tab(
                      text: 'Saipan',
                    ),
                    Tab(
                      text: 'Tinian',
                    ),
                    Tab(
                      text: 'Rota',
                    )
                  ]),
            ),
          ),
          Container(
            width: double.maxFinite,
            height: 300,
            child: TabBarView(controller: _tabController, children: [
              simpleItems(),
              simpleItems2(),
              simpleItems3(),
            ]),
          ),
          Container(
              padding: const EdgeInsets.only(left: 20),
              child: BigAppText(text: "Hotels", size: 20)),
          SizedBox(
            height: 20,
          ),
          buildVerticalList(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.map_outlined,
        ),
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return MapPage();
            },
          ),
        ),
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;

  CircleTabIndicator({required this.color, required this.radius});

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    return _CirclePainter(color: color, radius: radius);
  }
}

class _CirclePainter extends BoxPainter {
  final double radius;
  late Color color;
  _CirclePainter({required this.color, required this.radius});

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    late Paint _paint;
    _paint = Paint()..color = color;
    _paint = _paint..isAntiAlias = true;
    final Offset circleOffset =
        offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius);
    canvas.drawCircle(circleOffset, radius, _paint);
  }
}

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Managaha Island",
    "Banzai Cliff",
    "Hyatt Regency Saipan",
    "Saipan World Resort",
    "Pacific Island Club",
    "Crowne Plaza Resort",
    "Coral Ocean Resort",
    "The Shack Saipan",
    "Revolving Restaurant 360",
    "Himawari",
    "Country House Restraurant",
    "Spicy Thai Coffee Shop",
    "Grotto",
    "Godfather's Bar",
    "Loco & Taco Smoke Dining Bar",
    "Naked Bar & Grill",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.clear),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var places in searchTerms) {
      if (places.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(places);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var places in searchTerms) {
      if (places.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(places);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}

buildVerticalList() {
  return Padding(
    padding: EdgeInsets.only(left: 20.0),
    // child: Container(
    //   height: 210,
    child: ListView.builder(
      padding: EdgeInsets.only(top: 0.0),
      primary: true,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: places == null ? 0 : places.length,
      itemBuilder: (BuildContext context, int index) {
        Map place = places[index];
        return VerticalPlaceItem(place: place);
      },
    ),
    // ),
  );
}
