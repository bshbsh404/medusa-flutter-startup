import 'package:get/get.dart';
import '../api/products_api.dart';

import '../model/product_model.dart';

class AllProductsController extends GetxController {
  var getAllProducts = <Products>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllProduct();
  }

  void fetchAllProduct() async {
    isLoading(true);
    try {
      var getAllProductResult = await ProductApi().getAllProducts();
      getAllProducts.value = getAllProductResult;
    } finally {
      isLoading(false);
    }
  }
}
