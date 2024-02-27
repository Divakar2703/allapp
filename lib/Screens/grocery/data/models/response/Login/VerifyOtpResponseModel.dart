class VerifyOtpResponseModel {
  String? userId;
  String? name;
  String? status;
  int? statusCode;
  String? message;

  VerifyOtpResponseModel({
   this.userId,
   this.name,
   this.status,
   this.statusCode,
   this.message,
  });

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return VerifyOtpResponseModel(
      userId: json['user_id'] ?? '',
      name: json['name'] ?? '',
      status: json['status'] ?? '',
      statusCode: json['statusCode'] ?? 0,
      message: json['message'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'name': name,
      'status': status,
      'statusCode': statusCode,
      'message': message,
    };
  }
}
