import 'package:bloc_example/2-lesson/data/models/product_model/product_model.dart';
import 'package:dio/dio.dart';

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
    print("Response ketdi");
    Response response = await dio.get("https://fakestoreapi.com/products/$id");
    if (response.statusCode == 200) {
      print("Data keldi");
      List products =
          response.data.map((e) => ProductModel.fromJson(e)).toList();
      return products;
    }
  }
}
