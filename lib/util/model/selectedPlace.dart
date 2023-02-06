import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:app/util/model/subPlaces.dart';

class Category {
  final String name;
  final String imageUrl;
  final String location;
  final String description;
  final double distance;
  final double rating;
  final List<Category> subPlaces;

  Category({
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.description,
    required this.distance,
    required this.rating,
    required this.subPlaces,
  });
}
