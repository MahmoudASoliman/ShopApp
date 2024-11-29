import 'package:flutter/material.dart';

class UpdateProductModel {
  final int id;
  final String title;
  final String price;
  final String description;

  UpdateProductModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description});
  factory UpdateProductModel.fromjson(jsonData) {
    return UpdateProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'],
      description: jsonData['description'],
    );
  }
}
