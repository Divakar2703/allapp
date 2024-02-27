class DummyResponseModel {
  String? productName;
  String? stock;
  String? rating;
  List<Multiimg>? multiimg;
  List<Multiweight>? multiweight;
  String? status;
  int? statusCode;
  String? message;

  DummyResponseModel(
      {this.productName,
        this.stock,
        this.rating,
        this.multiimg,
        this.multiweight,
        this.status,
        this.statusCode,
        this.message});

  DummyResponseModel.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    stock = json['stock'];
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
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_name'] = this.productName;
    data['stock'] = this.stock;
    data['rating'] = this.rating;
    if (this.multiimg != null) {
      data['multiimg'] = this.multiimg!.map((v) => v.toJson()).toList();
    }
    if (this.multiweight != null) {
      data['multiweight'] = this.multiweight!.map((v) => v.toJson()).toList();
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
  int? discountedPrice;
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
