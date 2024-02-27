class SubCatProductsResponseModel {
  List<Product>? product;
  int? nextpage;
  String? status;
  int? statusCode;
  String? message;

  SubCatProductsResponseModel(
      {this.product,
        this.nextpage,
        this.status,
        this.statusCode,
        this.message});

  SubCatProductsResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      product = <Product>[];
      json['product'].forEach((v) {
        product!.add(new Product.fromJson(v));
      });
    }
    nextpage = json['nextpage'];
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.product != null) {
      data['product'] = this.product!.map((v) => v.toJson()).toList();
    }
    data['nextpage'] = this.nextpage;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Product {
  String? id;
  dynamic price;
  dynamic discountedPrice;
  String? discount;
  String? productImage;
  String? productName;
  String? weight;
  String? sizeid;
  String? returnable;
  String? stock;
  String? wishlistExist;

  Product(
      {this.id,
        this.price,
        this.discountedPrice,
        this.discount,
        this.productImage,
        this.productName,
        this.weight,
        this.sizeid,
        this.returnable,
        this.stock,
        this.wishlistExist});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    discount = json['discount'];
    productImage = json['image'];
    productName = json['product_name'];
    weight = json['weight'];
    sizeid = json['sizeid'];
    returnable = json['returnable'];
    stock = json['stock'];
    wishlistExist = json['wishlist_exist'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['discounted_price'] = this.discountedPrice;
    data['discount'] = this.discount;
    data['product_image'] = this.productImage;
    data['product_name'] = this.productName;
    data['weight'] = this.weight;
    data['sizeid'] = this.sizeid;
    data['returnable'] = this.returnable;
    data['stock'] = this.stock;
    data['wishlist_exist'] = this.wishlistExist;
    return data;
  }
}
