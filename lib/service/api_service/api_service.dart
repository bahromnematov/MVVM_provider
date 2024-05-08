import 'package:dio/dio.dart';

import '../../data/models/product_model/product_model.dart';

class ApiService {
  Future getAllProducts() async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products");
    if (response.statusCode == 200) {
      List products =
          response.data.map((e) => ProductModel.fromJson(e)).toList();
      return products;
    }
  }

  Future getSingleProducts(int id) async {
    Dio dio = Dio();
    Response response = await dio.get("https://fakestoreapi.com/products/$id");
    if (response.statusCode == 200) {
      return ProductModel.fromJson(response.data);
    }
  }
}
