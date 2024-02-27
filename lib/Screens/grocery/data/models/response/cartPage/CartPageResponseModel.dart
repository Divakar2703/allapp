class CartPageResponseModel {
  List<Mycart>? mycart;
  String? saveforleter;
  String? status;
  int? statusCode;
  String? message;

  CartPageResponseModel(
      {this.mycart,
        this.saveforleter,
        this.status,
        this.statusCode,
        this.message});

  CartPageResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['mycart'] != null) {
      mycart = <Mycart>[];
      json['mycart'].forEach((v) {
        mycart!.add(new Mycart.fromJson(v));
      });
    }
    saveforleter = json['saveforleter'];
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.mycart != null) {
      data['mycart'] = this.mycart!.map((v) => v.toJson()).toList();
    }
    data['saveforleter'] = this.saveforleter;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Mycart {
  String? cartId;
  String? productId;
  String? productWeight;
  String? image;
  String? productName;
  String? productPrice;
  String? productDiscount;

  Mycart(
      {this.cartId,
        this.productId,
        this.productWeight,
        this.image,
        this.productName,
        this.productPrice,
        this.productDiscount});

  Mycart.fromJson(Map<String, dynamic> json) {
    cartId = json['cart_id'];
    productId = json['product_id'];
    productWeight = json['product_weight'];
    image = json['image'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    productDiscount = json['product_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cart_id'] = this.cartId;
    data['product_id'] = this.productId;
    data['product_weight'] = this.productWeight;
    data['image'] = this.image;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['product_discount'] = this.productDiscount;
    return data;
  }
}
