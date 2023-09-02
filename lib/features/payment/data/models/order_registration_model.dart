class OrderRegistrationModel {
  int id;
  DateTime createdAt;
  bool deliveryNeeded;
  Merchant merchant;
  dynamic collector;
  int amountCents;
  dynamic shippingData;
  String currency;
  bool isPaymentLocked;
  bool isReturn;
  bool isCancel;
  bool isReturned;
  bool isCanceled;
  dynamic merchantOrderId;
  dynamic walletNotification;
  int paidAmountCents;
  bool notifyUserWithEmail;
  List<dynamic> items;
  String orderUrl;
  int commissionFees;
  int deliveryFeesCents;
  int deliveryVatCents;
  String paymentMethod;
  dynamic merchantStaffTag;
  String apiSource;
  Data data;
  String token;
  String url;

  OrderRegistrationModel({
    required this.id,
    required this.createdAt,
    required this.deliveryNeeded,
    required this.merchant,
    required this.collector,
    required this.amountCents,
    required this.shippingData,
    required this.currency,
    required this.isPaymentLocked,
    required this.isReturn,
    required this.isCancel,
    required this.isReturned,
    required this.isCanceled,
    required this.merchantOrderId,
    required this.walletNotification,
    required this.paidAmountCents,
    required this.notifyUserWithEmail,
    required this.items,
    required this.orderUrl,
    required this.commissionFees,
    required this.deliveryFeesCents,
    required this.deliveryVatCents,
    required this.paymentMethod,
    required this.merchantStaffTag,
    required this.apiSource,
    required this.data,
    required this.token,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'createdAt': this.createdAt,
      'deliveryNeeded': this.deliveryNeeded,
      'merchant': this.merchant,
      'collector': this.collector,
      'amountCents': this.amountCents,
      'shippingData': this.shippingData,
      'currency': this.currency,
      'isPaymentLocked': this.isPaymentLocked,
      'isReturn': this.isReturn,
      'isCancel': this.isCancel,
      'isReturned': this.isReturned,
      'isCanceled': this.isCanceled,
      'merchantOrderId': this.merchantOrderId,
      'walletNotification': this.walletNotification,
      'paidAmountCents': this.paidAmountCents,
      'notifyUserWithEmail': this.notifyUserWithEmail,
      'items': this.items,
      'orderUrl': this.orderUrl,
      'commissionFees': this.commissionFees,
      'deliveryFeesCents': this.deliveryFeesCents,
      'deliveryVatCents': this.deliveryVatCents,
      'paymentMethod': this.paymentMethod,
      'merchantStaffTag': this.merchantStaffTag,
      'apiSource': this.apiSource,
      'data': this.data,
      'token': this.token,
      'url': this.url,
    };
  }

  factory OrderRegistrationModel.fromMap(Map<String, dynamic> map) {
    return OrderRegistrationModel(
      id: map['id'] as int,
      createdAt: map['createdAt'] as DateTime,
      deliveryNeeded: map['deliveryNeeded'] as bool,
      merchant: map['merchant'] as Merchant,
      collector: map['collector'] as dynamic,
      amountCents: map['amountCents'] as int,
      shippingData: map['shippingData'] as dynamic,
      currency: map['currency'] as String,
      isPaymentLocked: map['isPaymentLocked'] as bool,
      isReturn: map['isReturn'] as bool,
      isCancel: map['isCancel'] as bool,
      isReturned: map['isReturned'] as bool,
      isCanceled: map['isCanceled'] as bool,
      merchantOrderId: map['merchantOrderId'] as dynamic,
      walletNotification: map['walletNotification'] as dynamic,
      paidAmountCents: map['paidAmountCents'] as int,
      notifyUserWithEmail: map['notifyUserWithEmail'] as bool,
      items: map['items'] as List<dynamic>,
      orderUrl: map['orderUrl'] as String,
      commissionFees: map['commissionFees'] as int,
      deliveryFeesCents: map['deliveryFeesCents'] as int,
      deliveryVatCents: map['deliveryVatCents'] as int,
      paymentMethod: map['paymentMethod'] as String,
      merchantStaffTag: map['merchantStaffTag'] as dynamic,
      apiSource: map['apiSource'] as String,
      data: map['data'] as Data,
      token: map['token'] as String,
      url: map['url'] as String,
    );
  }
}

class Data {
  Data();
}

class Merchant {
  int id;
  DateTime createdAt;
  List<String> phones;
  List<String> companyEmails;
  String companyName;
  String state;
  String country;
  String city;
  String postalCode;
  String street;

  Merchant({
    required this.id,
    required this.createdAt,
    required this.phones,
    required this.companyEmails,
    required this.companyName,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

}
