import 'package:bloc_example/data/repository/products_repository.dart';
import 'package:bloc_example/view_model/products_view_model.dart';
import 'package:flutter/cupertino.dart';

import '../data/models/product_model/product_model.dart';
import '../service/api_service/api_service.dart';

class ProductViewModel extends ChangeNotifier {

  ProductModel? product;
  bool isLoading = false;

  void getSingleProduct(int id) async {
    changeLoadingState();
    product = await ProductsRepository().getSingleProduct(id);
    changeLoadingState();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
