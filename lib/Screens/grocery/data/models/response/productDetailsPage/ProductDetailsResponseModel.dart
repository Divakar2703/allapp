
import '../subCategory/SubCatProductResponseModel.dart';

class ProductDetailsResponseModel {
  String? productId;
  String? productName;
  String? stock;
  String? description;
  String? rating;
  List<Multiimg>? multiimg;
  List<Multiweight>? multiweight;
  List<Product>? related;
  String? status;
  int? statusCode;
  String? message;

  ProductDetailsResponseModel(
      {this.productId,
        this.productName,
        this.stock,
        this.description,
        this.rating,
        this.multiimg,
        this.multiweight,
        this.related,
        this.status,
        this.statusCode,
        this.message});

  ProductDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    stock = json['stock'];
    description = json['description'];
    rating = json['rating'];
    if (json['multiimg'] != null) {
      multiimg = <Multiimg>[];
      json['multiimg'].forEach((v) {
        multiimg!.add(new Multiimg.fromJson(v));
      });
    }
    if (json['multiweight'] != null) {
      multiweight = <Multiweight>[];
      json['multiweight'].forEach((v) {
        multiweight!.add(new Multiweight.fromJson(v));
      });
    }
    if (json['related'] != null) {
      related = <Product>[];
      json['related'].forEach((v) {
        related!.add(new Product.fromJson(v));
      });
    }
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['stock'] = this.stock;
    data['description'] = this.description;
    data['rating'] = this.rating;
    if (this.multiimg != null) {
      data['multiimg'] = this.multiimg!.map((v) => v.toJson()).toList();
    }
    if (this.multiweight != null) {
      data['multiweight'] = this.multiweight!.map((v) => v.toJson()).toList();
    }
    if (this.related != null) {
      data['related'] = this.related!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Multiimg {
  String? image;

  Multiimg({this.image});

  Multiimg.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    return data;
  }
}

class Multiweight {
  String? weight;
  String? discount;
  dynamic discountedPrice;
  String? price;

  Multiweight({this.weight, this.discount, this.discountedPrice, this.price});

  Multiweight.fromJson(Map<String, dynamic> json) {
    weight = json['weight'];
    discount = json['discount'];
    discountedPrice = json['discounted_price'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['weight'] = this.weight;
    data['discount'] = this.discount;
    data['discounted_price'] = this.discountedPrice;
    data['price'] = this.price;
    return data;
  }
}

class Related {
  String? id;
  dynamic price;
  dynamic discountedPrice;
  String? discount;
  String? image;
  String? productName;
  String? weight;
  String? sizeid;
  String? returnable;
  String? stock;
  String? wishlistExist;

  Related(
      {this.id,
        this.price,
        this.discountedPrice,
        this.discount,
        this.image,
        this.productName,
        this.weight,
        this.sizeid,
        this.returnable,
        this.stock,
        this.wishlistExist});

  Related.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    discount = json['discount'];
    image = json['image'];
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
    data['image'] = this.image;
    data['product_name'] = this.productName;
    data['weight'] = this.weight;
    data['sizeid'] = this.sizeid;
    data['returnable'] = this.returnable;
    data['stock'] = this.stock;
    data['wishlist_exist'] = this.wishlistExist;
    return data;
  }
}
