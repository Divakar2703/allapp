class PayNowRequestModel {
  int userId;
  String addedByWeb;
  String paymentType;
  double totalPayable;
  double convCharge;

  PayNowRequestModel({
    required this.userId,
    required this.addedByWeb,
    required this.paymentType,
    required this.totalPayable,
    required this.convCharge,
  });

  factory PayNowRequestModel.fromJson(Map<String, dynamic> json) {
    return PayNowRequestModel(
      userId: json['user_id'] ?? 0,
      addedByWeb: json['added_by_web'] ?? '',
      paymentType: json['paymenttype'] ?? '',
      totalPayable: json['total_payble'] != null ? json['total_payble'].toDouble() : 0.0,
      convCharge: json['conv_charge'] != null ? json['conv_charge'].toDouble() : 0.0,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'user_id': userId,
      'added_by_web': addedByWeb,
      'paymenttype': paymentType,
      'total_payble': totalPayable,
      'conv_charge': convCharge,
    };
    return data;
  }
}
