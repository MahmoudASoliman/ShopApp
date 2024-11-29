class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String? category;
  final String? image;
  final RatingModel? rating; // خليها nullable

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    this.category,
    this.image,
    this.rating,
  });

  factory ProductModel.fromjson(Map<String, dynamic> jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'].toString(),
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: jsonData['rating'] != null
          ? RatingModel.fromjson(jsonData['rating'])
          : null, // تأكدنا إن rating مش null
    );
  }
}

class RatingModel {
  final String? rate; // خليه nullable برضو
  final String? count;

  RatingModel({
    this.rate,
    this.count,
  });

  factory RatingModel.fromjson(Map<String, dynamic> jsonData) {
    return RatingModel(
      rate: jsonData['rate']?.toString(), // نستخدم ? عشان نتأكد من null
      count: jsonData['count']?.toString(),
    );
  }
}
