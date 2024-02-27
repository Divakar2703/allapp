class SubCatListResponseModel {
  List<Subcategory> subcategory;
  String status;
  int statusCode;
  String message;

  SubCatListResponseModel({
    required this.subcategory,
    required this.status,
    required this.statusCode,
    required this.message,
  });

  factory SubCatListResponseModel.fromJson(Map<String, dynamic> json) {
    return SubCatListResponseModel(
      subcategory: (json['subcategory'] as List)
          .map((i) => Subcategory.fromJson(i))
          .toList(),
      status: json['status'],
      statusCode: json['statusCode'],
      message: json['message'],
    );
  }
}

class Subcategory {
  String id;
  String subcatName;
  String subcatImage;
  String catBanner;

  Subcategory({
    required this.id,
    required this.subcatName,
    required this.subcatImage,
    required this.catBanner,
  });

  factory Subcategory.fromJson(Map<String, dynamic> json) {
    return Subcategory(
      id: json['id'],
      subcatName: json['subcat_name'],
      subcatImage: json['subcat_image'],
      catBanner: json['cat_banner'],
    );
  }
}
