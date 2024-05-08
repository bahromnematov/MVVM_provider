import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier{
  int counter=0;

  increment(){
    notifyListeners();
    counter++;
  }

  decrement(){
    notifyListeners();
    counter--;
  }

}