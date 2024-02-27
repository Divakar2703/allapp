class SubCatProductsRequestModel {
  String? subcategoryId;
  String? userId;
  String? pageno;

  SubCatProductsRequestModel({this.subcategoryId, this.userId, this.pageno});

  SubCatProductsRequestModel.fromJson(Map<String, dynamic> json) {
    subcategoryId = json['subcategory_id'];
    userId = json['user_id'];
    pageno = json['pageno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['subcategory_id'] = this.subcategoryId;
    data['user_id'] = this.userId;
    data['pageno'] = this.pageno;
    return data;
  }
}
