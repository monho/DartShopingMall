class ProductList {
  final Map<String, int> products = {
    "bread": 45000,
    "rice": 30000,
    "snack": 35000,
    "pizza": 38000,
    "pasta": 5000,
  };

  void showProducts() {
    print("\n📦 판매 상품 목록");
    print("-" * 30);
    products.forEach((name, price) {
      print("$name / ${price.toStringAsFixed(0)}원");
    });
    print("-" * 30);
  }

  bool isProductAvailable(String productName) {
    return products.containsKey(productName);
  }

  int getProductPrice(String productName) {
    return products[productName] ?? 0;
  }
}
