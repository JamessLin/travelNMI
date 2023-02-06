
import 'package:app/pages/island/islandDetails.dart';
import 'package:app/util/model/selectedPlace.dart';
import 'package:app/util/model/saipan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/big_app_text.dart';

class simpleItems extends StatelessWidget {
  List<Category> categories = Saipan.getMockCategories();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => islandDetails(
                            selectedCategory: categories[index],
                          )),
                ),
                child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 16, 10, 16),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                        Hero(
                          tag: categories[index].imageUrl,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              height: 400.0,
                              width: 210.0,
                              image: AssetImage(categories[index].imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10.0,
                          bottom: 10.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                categories[index].name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    FontAwesomeIcons.locationArrow,
                                    size: 13.0,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    categories[index].location,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      // fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
