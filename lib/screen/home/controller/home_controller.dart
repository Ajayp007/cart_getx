import 'package:cart_getx/screen/home/model/home_model.dart';
import 'package:cart_getx/utils/helper/api_helper.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxList cartList = [].obs;
  ApiHelper helper = ApiHelper();
  Future<List<ProductModel>?>? productList;

  void getApiData() {
    productList = helper.getProductApi();
  }
}
