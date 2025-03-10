import 'cart.dart';
import 'productList.dart';

class PriceCalculator {
  void showTotalPrice(Cart cart) {
    if (cart.getCartItems().isEmpty) {
      print("\n🛒 장바구니가 비어 있습니다.");
      return;
    }

    int total = 0;
    print("\n🛒 장바구니 내용");
    print("-" * 30);
    cart.getCartItems().forEach((name, count) {
      total += count * 10000; // 상품 가격을 ProductList에서 가져오도록 개선 가능
      print("$name x$count = ${count * 10000}원");
    });
    print("-" * 30);
    print("💰 총 가격: ${total.toStringAsFixed(0)}원");
  }
}
