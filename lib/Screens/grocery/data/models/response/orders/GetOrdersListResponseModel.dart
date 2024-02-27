class GetOrdersListResponseModel {
  List<Order>? order;
  int? nextpage;
  int? totalOrderFound;
  String? status;
  int? statusCode;
  String? message;

  GetOrdersListResponseModel(
      {this.order,
        this.nextpage,
        this.totalOrderFound,
        this.status,
        this.statusCode,
        this.message});

  GetOrdersListResponseModel.fromJson(Map<String, dynamic> json) {
    if (json['order'] != null) {
      order = <Order>[];
      json['order'].forEach((v) {
        order!.add(new Order.fromJson(v));
      });
    }
    nextpage = json['nextpage'];
    totalOrderFound = json['total_order_found'];
    status = json['status'];
    statusCode = json['statusCode'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.order != null) {
      data['order'] = this.order!.map((v) => v.toJson()).toList();
    }
    data['nextpage'] = this.nextpage;
    data['total_order_found'] = this.totalOrderFound;
    data['status'] = this.status;
    data['statusCode'] = this.statusCode;
    data['message'] = this.message;
    return data;
  }
}

class Order {
  String? id;
  String? orderId;
  String? domain;
  String? createdate;
  String? amount;
  String? orderStatus;
  String? payMode;
  String? cancelReason;
  String? orderimage;
  String? status;
  String? viewdetail;

  Order(
      {this.id,
        this.orderId,
        this.domain,
        this.createdate,
        this.amount,
        this.orderStatus,
        this.payMode,
        this.cancelReason,
        this.orderimage,
        this.status,
        this.viewdetail});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    orderId = json['order_id'];
    domain = json['domain'];
    createdate = json['createdate'];
    amount = json['amount'];
    orderStatus = json['order_status'];
    payMode = json['pay_mode'];
    cancelReason = json['cancel_reason'];
    orderimage = json['orderimage'];
    status = json['status'];
    viewdetail = json['viewdetail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['order_id'] = this.orderId;
    data['domain'] = this.domain;
    data['createdate'] = this.createdate;
    data['amount'] = this.amount;
    data['order_status'] = this.orderStatus;
    data['pay_mode'] = this.payMode;
    data['cancel_reason'] = this.cancelReason;
    data['orderimage'] = this.orderimage;
    data['status'] = this.status;
    data['viewdetail'] = this.viewdetail;
    return data;
  }
}
