import 'dart:convert';
import '/models/rating.dart';

class Product {
  final String name;
  final String description;
  final String images;
  final double price;
  final String? id;
  final String category;
  final double oldPrice;
  final double countInStock;
  final List<Rating>? rating;
  Product({
    required this.name,
    required this.description,
    required this.countInStock,
    required this.images,
    required this.price,
    this.id,
    required this.category,
    required this.oldPrice,
    this.rating,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'countInStock': countInStock,
      'images': images,
      'price': price,
      'category': category,
      'oldPrice': oldPrice,
      'id': id,
      'rating': rating,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      countInStock: map['countInStock']?.toDouble() ?? 0.0,
      images: map['images'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      id: map['_id'] ?? '',
      category: map['category'],
      oldPrice: map['oldPrice']?.toDouble() ?? 0.0,
      rating: map['ratings'] != null
          ? List<Rating>.from(
              map['ratings']?.map(
                (x) => Rating.fromMap(x),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
