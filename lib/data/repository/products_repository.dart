import 'package:bloc_example/data/models/product_model/product_model.dart';
import 'package:bloc_example/service/api_service/api_service.dart';

class ProductsRepository {
  Future<List<ProductModel>> getAllProducts() async =>
      await ApiService().getAllProducts();

  Future<ProductModel> getSingleProduct(int id) async =>
      await ApiService().getSingleProducts(id);
}
