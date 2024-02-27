class HomePageDynamicDataRequest {
  String? domain;
  String? userId;

  HomePageDynamicDataRequest({this.domain, this.userId});

  HomePageDynamicDataRequest.fromJson(Map<String, dynamic> json) {
    domain = json['domain'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['domain'] = this.domain;
    data['user_id'] = this.userId;
    return data;
  }
}
