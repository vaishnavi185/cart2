import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:cart2/modules/product.dart';

class shopController extends GetxController{
  var products = <Product>[].obs;
  @override
  void onInit(){
    super.onInit();
    fetchProducts();


  }
  void  fetchProducts() async{
    await Future . delayed(Duration(seconds:1));
    var productResult=[
      Product(
        id: 1,
        productName: "first prod",
        productImage: "abc",
        price: 30
      ),
      Product(
          id: 2,
          productName: "second prod",
          productImage: "abc",
          price: 20
      ),
      Product(
          id: 3,
          productName: "third prod",
          productImage: "abc",
          price: 50
      ),
    ];
   products.value = productResult;
  }
}