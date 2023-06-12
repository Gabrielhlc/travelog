import 'dart:io';
import 'dart:math';

import 'package:earth_places/models/place.dart';
import 'package:flutter/material.dart';

class EarthPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length;
  }

  Place getItemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      location: PlaceLocation(latitude: 0, longitude: 0),
      image: image,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
