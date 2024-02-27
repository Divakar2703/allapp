class home_page_category_response_model {
  List<Maincategory>? maincategory;
  List<Category>? category;
  String? status;
  int? statusCode;
  String? message;

  home_page_category_response_model(
      {this.maincategory,
        this.category,
        this.status,
        this.statusCode,
        this.message});

  home_page_category_response_model.fromJson(Map<String, dynamic> json) {
    if (json['maincategory'] != null) {
      maincategory = <Maincategory>[];
      json['maincategory'].forEach((v) {
        maincategory!.add(new Maincategory.fromJson(v));
      });
    }
    if (json['category'] != null) {
      category = <Category>[];
      json['category'].forEach((v) {
        category!.add(new Category.fromJson(v));
      });
    }
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.maincategory != null) {
      data['maincategory'] = this.maincategory!.map((v) => v.toJson()).toList();
    }
    if (this.category != null) {
      data['category'] = this.category!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Maincategory {
  String? id;
  String? maincatName;
  String? maincatImage;
  String? maincatBanner;
  List<Category>? category;

  Maincategory(
      {this.id,
        this.maincatName,
        this.maincatImage,
        this.maincatBanner,
        this.category});

  Maincategory.fromJson(Map<String, dynamic> json) {
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
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['maincat_name'] = this.maincatName;
    data['maincat_image'] = this.maincatImage;
    data['maincat_banner'] = this.maincatBanner;
    if (this.category != null) {
      data['category'] = this.category!.map((v) => v.toJson()).toList();
    }
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
