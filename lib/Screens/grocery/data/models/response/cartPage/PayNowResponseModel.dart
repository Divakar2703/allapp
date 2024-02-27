class PayNowResponseModel {
  String? orderId;
  String? mID;
  String? wEBCALLBACKURL;
  int? cONVCHARGE;
  int? mAINAMOUNT;
  int? tXNAMOUNT;
  String? cUSTID;
  String? paymentType;
  String? status;
  String? message;
  int? statusCode;

  PayNowResponseModel(
      {this.orderId,
        this.mID,
        this.wEBCALLBACKURL,
        this.cONVCHARGE,
        this.mAINAMOUNT,
        this.tXNAMOUNT,
        this.cUSTID,
        this.paymentType,
        this.status,
        this.message,
        this.statusCode});

  PayNowResponseModel.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    mID = json['MID'];
    wEBCALLBACKURL = json['WEB_CALLBACK_URL'];
    cONVCHARGE = json['CONV_CHARGE'];
    mAINAMOUNT = json['MAIN_AMOUNT'];
    tXNAMOUNT = json['TXN_AMOUNT'];
    cUSTID = json['CUST_ID'];
    paymentType = json['payment_type'];
    status = json['status'];
    message = json['message'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['MID'] = this.mID;
    data['WEB_CALLBACK_URL'] = this.wEBCALLBACKURL;
    data['CONV_CHARGE'] = this.cONVCHARGE;
    data['MAIN_AMOUNT'] = this.mAINAMOUNT;
    data['TXN_AMOUNT'] = this.tXNAMOUNT;
    data['CUST_ID'] = this.cUSTID;
    data['payment_type'] = this.paymentType;
    data['status'] = this.status;
    data['message'] = this.message;
    data['statusCode'] = this.statusCode;
    return data;
  }
}
