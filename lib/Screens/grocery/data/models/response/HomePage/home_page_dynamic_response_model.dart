  class HomePageDynamicDataResponse {
  List<ViewtypeList>? viewtypeList;
  String? status;
  int? statusCode;
  String? message;

  HomePageDynamicDataResponse(
      {this.viewtypeList, this.status, this.statusCode, this.message});

  factory HomePageDynamicDataResponse.fromJson(Map<String, dynamic> json) {
    return HomePageDynamicDataResponse(
      viewtypeList: json['ViewtypeList'] != null
          ? (json['ViewtypeList'] is List
          ? (json['ViewtypeList'] as List<dynamic>)
          .map((item) => ViewtypeList.fromJson(item as Map<String, dynamic>))
          .toList()
          : [ViewtypeList.fromJson(json['ViewtypeList'])])
          : null,
      status: json['status'] ?? '',
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
    );
  }


  Map<String, dynamic> toJson() {
    return {
      'ViewtypeList': viewtypeList?.map((item) => item.toJson()).toList(),
      'status': status,
      'statusCode': statusCode,
      'message': message,
    };
  }


}

class ViewtypeList {
  String? viewtype;
  String? datatype;
  String? title;
  String? designtype;
  List<Data>? data;

  ViewtypeList(
      {this.viewtype, this.datatype, this.title, this.designtype, this.data});

  ViewtypeList.fromJson(Map<String, dynamic> json) {
    viewtype = json['viewtype'];
    datatype = json['datatype'];
    title = json['title'];
    designtype = json['designtype'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['viewtype'] = this.viewtype;
    data['datatype'] = this.datatype;
    data['title'] = this.title;
    data['designtype'] = this.designtype;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
    String? bannerName;
    String? appbannerImage;
    String? heading1;
    String? heading2;
    String? heading3;
    String? link;
    String? categoryId;
    String? id;
    String? maincatName;
    String? maincatImage;
    String? maincatBanner;
    List<Category>? category;
    dynamic price;
    dynamic discountedPrice;
    String? image;
    String? productName;
    String? stock;
    String? discount;
    String? rating;
    String? video;
    String? weight; // New field
    String? sizeid; // New field
    String? returnable; // New field
    String? wishlistExist; // New field

    Data({
      this.bannerName,
      this.appbannerImage,
      this.heading1,
      this.heading2,
      this.heading3,
      this.link,
      this.categoryId,
      this.id,
      this.maincatName,
      this.maincatImage,
      this.maincatBanner,
      this.category,
      this.price,
      this.discountedPrice,
      this.image,
      this.productName,
      this.stock,
      this.discount,
      this.rating,
      this.video,
      this.weight,
      this.sizeid,
      this.returnable,
      this.wishlistExist,
    });

    Data.fromJson(Map<String, dynamic> json) {
      bannerName = json['banner_name'];
      appbannerImage = json['appbanner_image'];
      heading1 = json['heading_1'];
      heading2 = json['heading_2'];
      heading3 = json['heading_3'];
      link = json['link'];
      categoryId = json['category_id'];
      id = json['id'];
      maincatName = json['maincat_name'];
      maincatImage = json['maincat_image'];
      maincatBanner = json['maincat_banner'];
      if (json['category'] != null) {
        category = <Category>[];
        json['category'].forEach((v) {
          category!.add(new Category.fromJson(v));
        });
      }
      price = json['price'];
      discountedPrice = json['discounted_price'];
      image = json['image'];
      productName = json['product_name'];
      stock = json['stock'];
      discount = json['discount'];
      rating = json['rating'];
      video = json['video'];
      weight = json['weight']; // Assigning value to new field
      sizeid = json['sizeid']; // Assigning value to new field
      returnable = json['returnable']; // Assigning value to new field
      wishlistExist = json['wishlist_exist']; // Assigning value to new field
    }

    Map<String, dynamic> toJson() {
      final Map<String, dynamic> data = new Map<String, dynamic>();
      data['banner_name'] = this.bannerName;
      data['appbanner_image'] = this.appbannerImage;
      data['heading_1'] = this.heading1;
      data['heading_2'] = this.heading2;
      data['heading_3'] = this.heading3;
      data['link'] = this.link;
      data['category_id'] = this.categoryId;
      data['id'] = this.id;
      data['maincat_name'] = this.maincatName;
      data['maincat_image'] = this.maincatImage;
      data['maincat_banner'] = this.maincatBanner;
      if (this.category != null) {
        data['category'] = this.category!.map((v) => v.toJson()).toList();
      }
      data['price'] = this.price;
      data['discounted_price'] = this.discountedPrice;
      data['image'] = this.image;
      data['product_name'] = this.productName;
      data['stock'] = this.stock;
      data['discount'] = this.discount;
      data['rating'] = this.rating;
      data['video'] = this.video;
      data['weight'] = this.weight; // Adding new field to JSON
      data['sizeid'] = this.sizeid; // Adding new field to JSON
      data['returnable'] = this.returnable; // Adding new field to JSON
      data['wishlist_exist'] = this.wishlistExist; // Adding new field to JSON
      return data;
    }
  }


class Category {
  String? catId;
  String? serviceId;
  String? catImage;
  String? catName;
  String? bannerCat;

  Category(
      {this.catId,
        this.serviceId,
        this.catImage,
        this.catName,
        this.bannerCat});

  Category.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    serviceId = json['service_id'];
    catImage = json['cat_image'];
    catName = json['cat_name'];
    bannerCat = json['banner_cat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['service_id'] = this.serviceId;
    data['cat_image'] = this.catImage;
    data['cat_name'] = this.catName;
    data['banner_cat'] = this.bannerCat;
    return data;
  }
}
