import 'dart:convert';
import 'dart:developer';

import 'package:cakery_app/Model/Features_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart'as http;

class fetchlist extends ChangeNotifier{

  List<feature_product_model>productlist=[];
  List<feature_product_model>cartlist=[];

  void getallproducts()
  async {
    log("hello");
    productlist.clear();
    var url= Uri.parse("https://beta.cakerysuppliers.co.uk/api/featured-products");
    var response= await http.get(url);
    log(response.body);
    log("hello");
    var dataa=await jsonDecode(response.body);
    List<feature_product_model>hotdeallist=[];

    log(response.body);

    var listofdeals=dataa['data'];
    for(var data in listofdeals)
    {
      productlist.add(feature_product_model.fromJson(data));
    }




  }
  notifyListeners();





}