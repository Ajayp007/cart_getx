import 'dart:convert';

import 'package:cart_getx/screen/home/model/home_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {

  Future<List<ProductModel>?> getProductApi() async {
    String link = "https://fakestoreapi.com/products";

    var response = await http.get(Uri.parse(link));

    if (response.statusCode == 200) {
      List productList = jsonDecode(response.body);
      print("===================$productList====================");
      List<ProductModel> p1 = productList
          .map(
            (e) => ProductModel.mapToModel(e),
          )
          .toList();
      return p1;
    }
    return null;
  }
}
