import 'dart:io';
import 'productList.dart';

class Cart {
  final Map<String, int> cart = {};

  void addToCart(ProductList productList) {
    stdout.write("\n장바구니에 담을 상품명을 입력하세요: ");
    String? productName = stdin.readLineSync()?.trim();

    if (!productList.isProductAvailable(productName!)) {
      print("❌ 입력값이 올바르지 않아요 !");
      return;
    }

    stdout.write("상품 개수를 입력하세요: ");
    String? quantityInput = stdin.readLineSync()?.trim();

    try {
      int quantity = int.parse(quantityInput!);
      if (quantity <= 0) {
        print("❌ 0개보다 많은 개수의 상품만 담을 수 있어요 !");
        return;
      }

      cart[productName] = (cart[productName] ?? 0) + quantity;
      print("✅ 장바구니에 상품이 담겼어요 !");
    } catch (e) {
      print("❌ 입력값이 올바르지 않아요 !");
    }
  }

  Map<String, int> getCartItems() {
    return cart;
  }
}
