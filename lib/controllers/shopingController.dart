import 'package:first/models/product.dart';
import 'package:get/get.dart';

class ShoppingController extends GetxController {
  var  products = List<Product>.empty().obs; 
  @override
  void onInit(){
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async{
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
    Product (
      id: 1,
      price: 30,
      productDescription : 'some description about product',
      productImage :'abd',
      productName : 'firstProd'),
    Product (
      id: 2,
      price: 60,
      productDescription : 'some description about product',
      productImage :'abd',
      productName : 'SecondtProd'),
    Product (
      id: 3,
      price: 60,
      productDescription : 'some description about product',
      productImage :'abd',
      productName : 'ThirdProd'),
    ];
    products.value = productResult;
  }
}