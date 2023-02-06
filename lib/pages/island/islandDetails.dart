import 'package:app/pages/island/selectedDetail.dart';
import 'package:app/pages/search.dart';
import 'package:app/util/model/selectedPlace.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:core';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class islandDetails extends StatefulWidget {
  Category selectedCategory;
  islandDetails({super.key, required this.selectedCategory});
  @override
  State<islandDetails> createState() => _islandDetailsState();
}

class _islandDetailsState extends State<islandDetails> {
  final controller = TextEditingController();
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // body: ListView(
      //   padding: EdgeInsets.only(top: 0),
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 700,
                height: 260,
                // height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 4.0),
                        blurRadius: 5.0,
                      )
                    ]),
                child: Hero(
                  tag: widget.selectedCategory.imageUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      image: AssetImage(widget.selectedCategory.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        shadows: <Shadow>[
                          Shadow(color: Colors.black, blurRadius: 15.0)
                        ],
                      ),
                      iconSize: 30.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.selectedCategory.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.2,
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        const Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 14.0,
                          color: Colors.white,
                        ),
                        SizedBox(width: 5.0),
                        Text(
                          widget.selectedCategory.location,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
              shrinkWrap: true,
              primary: false,
              itemCount: widget.selectedCategory.subPlaces.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => selectedDetails(
                              subCategory:
                                  widget.selectedCategory.subPlaces[index],
                            )),
                  ),
                  child: Container(
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                          height: 150.0,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 247, 250),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(
                                150.0, 0.0, 20.0, 0.0),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   crossAxisAlignment:
                                  //       CrossAxisAlignment.start,
                                  //   children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.only(bottom: 10),
                                    width: 120,
                                    child: Text(
                                        widget.selectedCategory.subPlaces[index]
                                            .name,
                                        style: const TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w600)),
                                  ),
                                  // IconButton(
                                  //   icon: Icon(Icons.map_outlined),
                                  //   color: Colors.black,
                                  //   iconSize: 22,
                                  //   onPressed: () => Navigator.pop(context),
                                  // ),
                                  //   ],
                                  // ),

                                  Text(
                                      "${widget.selectedCategory.subPlaces[index].rating} star rating",
                                      style: const TextStyle(
                                          fontSize: 15.0,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w600)),
                                  _buildRatingStars(widget.selectedCategory
                                      .subPlaces[index].rating),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    "${widget.selectedCategory.subPlaces[index].distance} Kilometers away",
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                        Positioned(
                          left: 40.0,
                          bottom: 15,
                          top: 15,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              width: 110.0,
                              image: AssetImage(
                                widget
                                    .selectedCategory.subPlaces[index].imageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
