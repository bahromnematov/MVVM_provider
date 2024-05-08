import 'package:bloc_example/2-lesson/service/api_service/api_service.dart';
import 'package:flutter/cupertino.dart';

class ProductsViewModel extends ChangeNotifier {
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
