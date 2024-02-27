class SearchProductRequestModel {
  String? productName;
  String? userId;
  String? pageno;

  SearchProductRequestModel({this.productName, this.userId, this.pageno});

  SearchProductRequestModel.fromJson(Map<String, dynamic> json) {
    productName = json['product_name'];
    userId = json['user_id'];
    pageno = json['pageno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_name'] = this.productName;
    data['user_id'] = this.userId;
    data['pageno'] = this.pageno;
    return data;
  }
}
