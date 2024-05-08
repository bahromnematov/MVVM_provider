import 'package:bloc_example/2-lesson/data/models/product_model/product_model.dart';
import 'package:flutter/cupertino.dart';

import '../service/api_service/api_service.dart';

class ProductViewModel extends ChangeNotifier {
  ProductModel? products;
  bool isLoading = false;

  // void getSingleProduct() async {
  //   changeLoadingState();
  //   products = await ApiService().getSingleProducts(id);
  //   changeLoadingState();
  //   notifyListeners();
  // }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}