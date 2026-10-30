import 'package:flutter/material.dart';
import 'package:flutter_application_1/enums/categories_enum.dart';
import 'package:flutter_application_1/models/service_model.dart';
import 'package:flutter_application_1/services/network_services.dart';

class MainScreenProvider extends ChangeNotifier {
  CategoriesEnum? categoriesEnum;
  List<Sources>? sources;
  bool isSourcesLoading=false;
  void changeCatigory(CategoriesEnum? newChange) {
    categoriesEnum = newChange;
    notifyListeners();
  }
 
  getSources()async{
if(categoriesEnum!=null){
    List<Sources>? response=await  NetworkServices.getSources(categoriesEnum!.name);
     sources=response;
notifyListeners();
}isSourcesLoading=false;
notifyListeners();



  }


}
