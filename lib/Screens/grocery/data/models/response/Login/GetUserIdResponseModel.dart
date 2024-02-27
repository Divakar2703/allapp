class GetUserIdResponseModel {
  final Record record;
  final String status;
  final int statusCode;
  final String message;

  GetUserIdResponseModel({required this.record, required this.status, required this.statusCode, required this.message});

  factory GetUserIdResponseModel.fromJson(Map<String, dynamic> json) {
    return GetUserIdResponseModel(
      record: Record.fromJson(json['record']),
      status: json['status'],
      statusCode: json['statusCode'],
      message: json['message'],
    );
  }
}

class Record {
  final String id;
  final String userId;
  final String name;
  final String phone;

  Record({required this.id, required this.userId, required this.name, required this.phone});

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
      id: json['id'],
      userId: json['user_id'],
      name: json['name'],
      phone: json['phone'],
    );
  }
}
