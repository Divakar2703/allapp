import 'dart:convert';

class HomePageResponseModel {
  List<ProductModel> product;
  List<ProductModel> leatestProduct;
  List<ProductModel> mostDiscountProduct;
  String status;
  int statusCode;
  String message;

  HomePageResponseModel({
    required this.product,
    required this.leatestProduct,
    required this.mostDiscountProduct,
    required this.status,
    required this.statusCode,
    required this.message,
  });

  factory HomePageResponseModel.fromJson(Map<String, dynamic> jsonMap) {
    return HomePageResponseModel(
      product: List<ProductModel>.from(jsonMap['product']?.map((x) => ProductModel.fromJson(x)) ?? []),
      leatestProduct: List<ProductModel>.from(jsonMap['leatest_product']?.map((x) => ProductModel.fromJson(x)) ?? []),
      mostDiscountProduct: List<ProductModel>.from(jsonMap['most_discount_product']?.map((x) => ProductModel.fromJson(x)) ?? []),
      status: jsonMap['status'],
      statusCode: jsonMap['statusCode'],
      message: jsonMap['message'],
    );
  }

}

class ProductModel {
  String id;
  String price;
  double discountedPrice;
  String image;
  String productName;
  String stock;
  String discount;
  String rating;

  ProductModel({
    required this.id,
    required this.price,
    required this.discountedPrice,
    required this.image,
    required this.productName,
    required this.stock,
    required this.discount,
    required this.rating,
  });

  factory ProductModel.fromJson(Map<String, dynamic>? json) {
    return ProductModel(
      id: json?['id'] ?? '',
      price: json?['price'] ?? '',
      discountedPrice: json?['discounted_price']?.toDouble() ?? 0.0,
      image: json?['image'] ?? '',
      productName: json?['product_name'] ?? '',
      stock: json?['stock'] ?? '',
      discount: json?['discount'] ?? '',
      rating: json?['rating'] ?? '',
    );
  }
}
