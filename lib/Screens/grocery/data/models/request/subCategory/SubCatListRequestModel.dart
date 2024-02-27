class SubCatListRequestModel {
  String? categoryId;
  String? userId;

  SubCatListRequestModel({this.categoryId, this.userId});

  SubCatListRequestModel.fromJson(Map<String, dynamic> json) {
    categoryId = json['category_id'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['category_id'] = this.categoryId;
    data['user_id'] = this.userId;
    return data;
  }
}
