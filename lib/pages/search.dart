import 'package:app/util/model/saipan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:app/widgets/searchs.dart';

import '../util/model/selectedPlace.dart';

class userSearch extends StatefulWidget {
  userSearch({
    super.key,
  });

  @override
  State<userSearch> createState() => _userSearchState();
}

class _userSearchState extends State<userSearch> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // children: <Widget>[
        //   Padding(
        //     padding: const EdgeInsets.only(top: 50.0),
        //     child: Container(
        //       margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        //       child: TextField(
        //         controller: controller,
        //         decoration: InputDecoration(
        //             prefixIcon: const Icon(Icons.search),
        //             hintText: 'Ex: Managaha Island, Banzai Cliff'),
        //       ),
        //     ),
        //   ),
        //   Expanded(
        //     child: ListView.builder(
        //       itemCount: widget.subCategory.subPlaces.length,
        //       itemBuilder: ((context, index) {
        //         final subCategory = widget.subCategory.subPlaces;
        //         return ListTile(
        //           leading: Image.asset(
        //             subCategory[index].imageUrl,
        //             fit: BoxFit.cover,
        //             width: 50,
        //             height: 50,
        //           ),
        //           title: Text(subCategory[index].name),
        //         );
        //       }),
        //     ),
        //   ),
        // ],
      ),
    );
  }
}
