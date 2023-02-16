import 'dart:convert';
import 'package:free_api/model/product_model.dart';
import 'package:http/http.dart' as http;
class ProductRepo{
  // get product
  Future<ProductModel> getData() async {
    var response = await http.get(Uri.parse("https://dummyjson.com/products"));
    if(response.statusCode==200){
      return ProductModel.fromJson(jsonDecode(response.body));
    }else{
     return throw Exception("Something wrong, please try again");
    }
  }
}