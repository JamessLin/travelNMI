import 'package:flutter/material.dart';
import 'package:app/util/model/selectedPlace.dart';

class subPlaces extends Category {
  final String activityType;
  subPlaces(
      {required this.activityType,
      required String name,
      required String imageUrl,
      required String location,
      required String description,
      required int distance,
      required int rating,

      // required this.subPlaceName,
      // required this.subPlaceNameImageUrl,
      // required this.subPlacelocation,
      // required this.subPlaceDistance,
      // required String name,
      // required String imageUrl,
      // required String location,
      required List<Category> subPlaces})
      : super(
            name: name,
            imageUrl: imageUrl,
            location: location,
            description: description,
            distance: distance,
            rating: rating,
            subPlaces: subPlaces);
}
