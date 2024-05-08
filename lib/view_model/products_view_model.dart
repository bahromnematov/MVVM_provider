import 'package:flutter/cupertino.dart';

import '../service/api_service/api_service.dart';

class ProductsViewModel extends ChangeNotifier {
  ProductsViewModel() {
    getAllProducts();
  }

  List products = [];
  bool isLoading = false;

  void getAllProducts() async {
    changeLoadingState();
    products = await ApiService().getAllProducts();
    changeLoadingState();
    notifyListeners();
  }

  void changeLoadingState() {
    isLoading = !isLoading;
    notifyListeners();
  }
}
