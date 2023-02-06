import 'package:app/pages/map.dart';
import 'package:app/pages/selectedMap.dart';
import 'package:app/util/model/saipan.dart';
import 'package:app/util/model/selectedPlace.dart';
import 'package:app/util/places.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class selectedDetails extends StatelessWidget {
  Category subCategory;
  List<Category> categories = Saipan.getMockCategories();
  selectedDetails({
    super.key,
    required this.subCategory,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          // Padding(
          // padding: EdgeInsets.only(left: 10, right: 10.0),
          Stack(children: <Widget>[
            Container(
              height: 400.0,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  this.subCategory.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  shadows: <Shadow>[
                    Shadow(color: Colors.black, blurRadius: 15.0)
                  ],
                ),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ]),
          SizedBox(height: 20),
          // ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            primary: false,
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 10),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      this.subCategory.name,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                      maxLines: 2,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  // IconButton(
                  //   icon: Icon(
                  //     Icons.g,
                  //   ),
                  //   onPressed: () => Navigator.of(context).push(
                  //     MaterialPageRoute(
                  //       builder: (BuildContext context) {
                  //         return MapPage();
                  //       },
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    size: 14,
                    color: Colors.blueGrey[300],
                  ),
                  SizedBox(width: 3),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      this.subCategory.location,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                        color: Colors.blueGrey[300],
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              // Container(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     "${place["price"]}",
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 17,
              //     ),
              //     maxLines: 1,
              //     textAlign: TextAlign.left,
              //   ),
              // ),

              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: 'Poppins'),
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.subCategory.description,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 50.0),
            ],
          ),
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

  buildSlider() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 250.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places == null ? 0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];

          return Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                "${place["img"]}",
                height: 250.0,
                width: MediaQuery.of(context).size.width - 40.0,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
