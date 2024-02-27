class CouponListResponseModel {
  List<CouponCode>? couponCode;
  String? status;
  int? statusCode;
  String? message;

  CouponListResponseModel(
      {this.couponCode, this.status, this.statusCode, this.message});

  CouponListResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['coupon_code'] != null) {
      couponCode = <CouponCode>[];
      json['coupon_code'].forEach((v) {
        couponCode!.add(new CouponCode.fromJson(v));
      });
    }
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.couponCode != null) {
      data['coupon_code'] = this.couponCode!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class CouponCode {
  String? id;
  String? promoCodeName;
  String? promoCode;
  String? promoCodeDiscount;
  String? promoCodeMinapplication;
  String? promoCodeMaxapplication;
  String? promoCodeNoofredeemsallowed;
  String? promoCodeDiscription;
  String? image;
  String? startDate;
  String? startTime;
  String? expiryDate;
  String? expiryTime;
  String? status;

  CouponCode(
      {this.id,
        this.promoCodeName,
        this.promoCode,
        this.promoCodeDiscount,
        this.promoCodeMinapplication,
        this.promoCodeMaxapplication,
        this.promoCodeNoofredeemsallowed,
        this.promoCodeDiscription,
        this.image,
        this.startDate,
        this.startTime,
        this.expiryDate,
        this.expiryTime,
        this.status});

  CouponCode.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    promoCodeName = json['promo_code_name'];
    promoCode = json['promo_code'];
    promoCodeDiscount = json['promo_code_discount'];
    promoCodeMinapplication = json['promo_code_minapplication'];
    promoCodeMaxapplication = json['promo_code_maxapplication'];
    promoCodeNoofredeemsallowed = json['promo_code_noofredeemsallowed'];
    promoCodeDiscription = json['promo_code_discription'];
    image = json['image'];
    startDate = json['start_date'];
    startTime = json['start_time'];
    expiryDate = json['expiry_date'];
    expiryTime = json['expiry_time'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['promo_code_name'] = this.promoCodeName;
    data['promo_code'] = this.promoCode;
    data['promo_code_discount'] = this.promoCodeDiscount;
    data['promo_code_minapplication'] = this.promoCodeMinapplication;
    data['promo_code_maxapplication'] = this.promoCodeMaxapplication;
    data['promo_code_noofredeemsallowed'] = this.promoCodeNoofredeemsallowed;
    data['promo_code_discription'] = this.promoCodeDiscription;
    data['image'] = this.image;
    data['start_date'] = this.startDate;
    data['start_time'] = this.startTime;
    data['expiry_date'] = this.expiryDate;
    data['expiry_time'] = this.expiryTime;
    data['status'] = this.status;
    return data;
  }
}
