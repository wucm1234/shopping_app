import 'package:flutter/foundation.dart';

class Product with ChangeNotifier {
  final String id;
  final String title;

  final double price;
  final String imageUrl;
  final String description;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.imageUrl,
    this.isFavorite = false,
    @required this.price,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
