class ProductList {
  final Map<String, int> products = {
    "셔츠": 45000,
    "원피스": 30000,
    "반팔티": 35000,
    "반바지": 38000,
    "양말": 5000,
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
