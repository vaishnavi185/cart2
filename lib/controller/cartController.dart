import 'package:get/get.dart';
import 'package:cart2/modules/product.dart';

class CartController extends GetxController{
  var cartItems = <Product>[].obs;
  int get count => cartItems.length;
   addToCart(Product product){
    cartItems.add(product);
  }
}