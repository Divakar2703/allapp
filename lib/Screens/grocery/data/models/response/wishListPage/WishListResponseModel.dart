class WishListResponseModel {
  List<Wishlist>? wishlist;
  String? status;
  int? statusCode;
  String? message;

  WishListResponseModel(
      {this.wishlist, this.status, this.statusCode, this.message});

  WishListResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['wishlist'] != null) {
      wishlist = <Wishlist>[];
      json['wishlist'].forEach((v) {
        wishlist!.add(new Wishlist.fromJson(v));
      });
    }
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.wishlist != null) {
      data['wishlist'] = this.wishlist!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Wishlist {
  String? wishlistId;
  String? productId;
  String? productWeight;
  String? image;
  String? productName;
  String? stock;
  String? productPrice;
  String? productDiscount;

  Wishlist(
      {this.wishlistId,
        this.productId,
        this.productWeight,
        this.image,
        this.productName,
        this.stock,
        this.productPrice,
        this.productDiscount});

  Wishlist.fromJson(Map<String, dynamic> json) {
    wishlistId = json['wishlist_id'];
    productId = json['product_id'];
    productWeight = json['product_weight'];
    image = json['image'];
    productName = json['product_name'];
    stock = json['stock'];
    productPrice = json['product_price'];
    productDiscount = json['product_discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['wishlist_id'] = this.wishlistId;
    data['product_id'] = this.productId;
    data['product_weight'] = this.productWeight;
    data['image'] = this.image;
    data['product_name'] = this.productName;
    data['stock'] = this.stock;
    data['product_price'] = this.productPrice;
    data['product_discount'] = this.productDiscount;
    return data;
  }
}
