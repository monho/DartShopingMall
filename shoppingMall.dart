import 'dart:io';
import 'productList.dart';
import 'cart.dart';
import 'priceCalculator.dart';

class ShoppingMall {
  final ProductList productList = ProductList();
  final Cart cart = Cart();
  final PriceCalculator priceCalculator = PriceCalculator();

  void run() {
    bool isRunning = true;
    while (isRunning) {
      print("\n" + "-" * 70);
      print("[1] 상품 목록 보기 / [2] 장바구니에 담기 / [3] 장바구니 총 가격 보기 / [6]장바구니 비우기 / [7] 프로그램 종료");
      print("-" * 70);
      stdout.write("메뉴를 선택하세요: ");
      String? choice = stdin.readLineSync()?.trim();

      switch (choice) {
        case "1":
          productList.showProducts();
          break;
        case "2":
          cart.addToCart(productList);
          break;
        case "3":
          priceCalculator.showTotalPrice(cart);
          break;
        case "4":
          print("이용해 주셔서 감사합니다 ~ 안녕히 가세요 !");
          isRunning = false;

        case "6":
          cart.clearCart();
          break;
        default:
          print("❌ 지원하지 않는 기능입니다 ! 다시 시도해 주세요 ..");
      }
    }
  }
}
