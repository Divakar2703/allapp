class GetUserIdRequestModel {
  String? name;
  String? phone;
  String? countrycode;

  GetUserIdRequestModel({this.name, this.phone, this.countrycode});

  GetUserIdRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    phone = json['phone'];
    countrycode = json['countrycode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['phone'] = this.phone;
    data['countrycode'] = this.countrycode;
    return data;
  }
}
