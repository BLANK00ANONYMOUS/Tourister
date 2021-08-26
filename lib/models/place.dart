import 'dart:io';
import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitude;
  final double longitude;
  final String? address;

  PlaceLocation({
    required this.latitude,
    required this.longitude,
    required this.address,
  });

  factory PlaceLocation.fromJson(Map<String, dynamic> json) {
    return PlaceLocation(
      latitude: json['latitude'],
      longitude: json['longitude'],
      address: json['address'],
    );
  }
}

class Place {
  final String id;
  final double review;
  final List<String> features;
  final String title;
  final String info;
  final double price;
  final PlaceLocation location;

  Place({
    required this.id,
    required this.review,
    required this.features,
    required this.title,
    required this.info,
    required this.price,
    required this.location,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    var featuresFromJson = json['features'];
    List<String> featuresList = featuresFromJson.cast<String>();
    return Place(
      id: json['id'],
      review: json['review'],
      features: featuresList,
      title: json['title'],
      info: json['info'],
      price: json['price'],
      location: PlaceLocation.fromJson(json['location']),
    );
  }
}
