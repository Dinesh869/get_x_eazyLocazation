import 'package:get/state_manager.dart';
import 'package:get_x/models/product.dart';
import 'package:get_x/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  List productList = new List<Product>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await RemoteServices.fetchProducts();
      if (products != null) {
        productList = products;
      }
    } finally {
      isLoading(false);
    }
  }
}
