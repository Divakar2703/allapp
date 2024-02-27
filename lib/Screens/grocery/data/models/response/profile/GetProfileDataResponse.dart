class GetProfileDataResponse {
  String? id;
  String? name;
  String? userId;
  String? email;
  String? gender;
  String? phone;
  String? status;
  int? statusCode;
  String? message;

  GetProfileDataResponse(
      {this.id,
        this.name,
        this.userId,
        this.email,
        this.gender,
        this.phone,
        this.status,
        this.statusCode,
        this.message});

  GetProfileDataResponse.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    userId = json['user_id'];
    email = json['email'];
    gender = json['gender'];
    phone = json['phone'];
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['user_id'] = this.userId;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}
