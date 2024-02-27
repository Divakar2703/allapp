class SearchProductResponseModel {
  List<SearchProduct>? searchProduct;
  int? nextpage;
  int? totalProductFound;
  String? status;
  int? statusCode;
  String? message;

  SearchProductResponseModel(
      {this.searchProduct,
        this.nextpage,
        this.totalProductFound,
        this.status,
        this.statusCode,
        this.message});

  SearchProductResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['search_product'] != null) {
      searchProduct = <SearchProduct>[];
      json['search_product'].forEach((v) {
        searchProduct!.add(new SearchProduct.fromJson(v));
      });
    }
    nextpage = json['nextpage'];
    totalProductFound = json['total product Found'];
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.searchProduct != null) {
      data['search_product'] =
          this.searchProduct!.map((v) => v.toJson()).toList();
    }
    data['nextpage'] = this.nextpage;
    data['total product Found'] = this.totalProductFound;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class SearchProduct {
  String? id;
  int? price;
  dynamic discountedPrice;
  String? discount;
  String? productImage;
  String? productName;
  String? weight;
  String? sizeid;
  String? returnable;
  String? stock;
  String? wishlistExist;

  SearchProduct(
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

  SearchProduct.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    discountedPrice = json['discounted_price'];
    discount = json['discount'];
    productImage = json['product_image'];
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
