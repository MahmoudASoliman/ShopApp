import 'package:store_app/helper/api.dart';
import 'package:store_app/models/all_product_model.dart';

class UpdateProductService {
  Future<ProductModel> updateProductService({
    required String title,
    required String price,
    required String desc,
    required String id,
  }) async {
    Map<String, dynamic> data = await Api().patch(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'id': id,
      },
    );
    return ProductModel.fromjson(data); // بنستخدم نفس الموديل هنا
  }
}
