class HomePageProductRequestModel {
  String? pincode;
  String? state;

  HomePageProductRequestModel({this.pincode, this.state});

  HomePageProductRequestModel.fromJson(Map<String, dynamic> json) {
    pincode = json['pincode'];
    state = json['state'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pincode'] = this.pincode;
    data['state'] = this.state;
    return data;
  }
}
