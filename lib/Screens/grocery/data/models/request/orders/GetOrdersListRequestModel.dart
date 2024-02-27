class GetOrdersListRequestModel {
  String? userId;
  String? pageno;

  GetOrdersListRequestModel({this.userId, this.pageno});

  GetOrdersListRequestModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    pageno = json['pageno'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['pageno'] = this.pageno;
    return data;
  }
}
