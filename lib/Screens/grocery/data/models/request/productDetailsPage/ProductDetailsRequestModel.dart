class ProductDetailsRequestModel {
  String? productId;
  String? userId;

  ProductDetailsRequestModel({this.productId, this.userId});

  ProductDetailsRequestModel.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['user_id'] = this.userId;
    return data;
  }
}
