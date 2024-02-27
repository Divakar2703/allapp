class UpdateProfileDataRequestModel {
  String? userId;
  String? name;
  String? gender;
  String? phone;
  String? email;

  UpdateProfileDataRequestModel(
      {this.userId, this.name, this.gender, this.phone, this.email});

  UpdateProfileDataRequestModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    name = json['name'];
    gender = json['gender'];
    phone = json['phone'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['name'] = this.name;
    data['gender'] = this.gender;
    data['phone'] = this.phone;
    data['email'] = this.email;
    return data;
  }
}
