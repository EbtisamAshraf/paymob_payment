class KioskPaymentsModel {
  int id;
  bool pending;
  int amountCents;
  bool success;
  bool isAuth;
  bool isCapture;
  bool isStandalonePayment;
  bool isVoided;
  bool isRefunded;
  bool is3DSecure;
  int integrationId;
  int profileId;
  bool hasParentTransaction;
  Order order;
  DateTime createdAt;
  List<dynamic> transactionProcessedCallbackResponses;
  String currency;
  SourceData sourceData;
  String apiSource;
  dynamic terminalId;
  int merchantCommission;
  dynamic installment;
  List<dynamic> discountDetails;
  bool isVoid;
  bool isRefund;
  KioskPaymentsModelData data;
  bool isHidden;
  PaymentKeyClaims paymentKeyClaims;
  bool errorOccured;
  bool isLive;
  dynamic otherEndpointReference;
  int refundedAmountCents;
  int sourceId;
  bool isCaptured;
  int capturedAmount;
  dynamic merchantStaffTag;
  DateTime updatedAt;
  bool isSettled;
  bool billBalanced;
  bool isBill;
  int owner;
  dynamic parentTransaction;

  KioskPaymentsModel({
    required this.id,
    required this.pending,
    required this.amountCents,
    required this.success,
    required this.isAuth,
    required this.isCapture,
    required this.isStandalonePayment,
    required this.isVoided,
    required this.isRefunded,
    required this.is3DSecure,
    required this.integrationId,
    required this.profileId,
    required this.hasParentTransaction,
    required this.order,
    required this.createdAt,
    required this.transactionProcessedCallbackResponses,
    required this.currency,
    required this.sourceData,
    required this.apiSource,
    required this.terminalId,
    required this.merchantCommission,
    required this.installment,
    required this.discountDetails,
    required this.isVoid,
    required this.isRefund,
    required this.data,
    required this.isHidden,
    required this.paymentKeyClaims,
    required this.errorOccured,
    required this.isLive,
    required this.otherEndpointReference,
    required this.refundedAmountCents,
    required this.sourceId,
    required this.isCaptured,
    required this.capturedAmount,
    required this.merchantStaffTag,
    required this.updatedAt,
    required this.isSettled,
    required this.billBalanced,
    required this.isBill,
    required this.owner,
    required this.parentTransaction,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'pending': this.pending,
      'amountCents': this.amountCents,
      'success': this.success,
      'isAuth': this.isAuth,
      'isCapture': this.isCapture,
      'isStandalonePayment': this.isStandalonePayment,
      'isVoided': this.isVoided,
      'isRefunded': this.isRefunded,
      'is3DSecure': this.is3DSecure,
      'integrationId': this.integrationId,
      'profileId': this.profileId,
      'hasParentTransaction': this.hasParentTransaction,
      'order': this.order,
      'createdAt': this.createdAt,
      'transactionProcessedCallbackResponses':
          this.transactionProcessedCallbackResponses,
      'currency': this.currency,
      'sourceData': this.sourceData,
      'apiSource': this.apiSource,
      'terminalId': this.terminalId,
      'merchantCommission': this.merchantCommission,
      'installment': this.installment,
      'discountDetails': this.discountDetails,
      'isVoid': this.isVoid,
      'isRefund': this.isRefund,
      'data': this.data,
      'isHidden': this.isHidden,
      'paymentKeyClaims': this.paymentKeyClaims,
      'errorOccured': this.errorOccured,
      'isLive': this.isLive,
      'otherEndpointReference': this.otherEndpointReference,
      'refundedAmountCents': this.refundedAmountCents,
      'sourceId': this.sourceId,
      'isCaptured': this.isCaptured,
      'capturedAmount': this.capturedAmount,
      'merchantStaffTag': this.merchantStaffTag,
      'updatedAt': this.updatedAt,
      'isSettled': this.isSettled,
      'billBalanced': this.billBalanced,
      'isBill': this.isBill,
      'owner': this.owner,
      'parentTransaction': this.parentTransaction,
    };
  }

  factory KioskPaymentsModel.fromMap(Map<String, dynamic> map) {
    return KioskPaymentsModel(
      id: map['id'] as int,
      pending: map['pending'] as bool,
      amountCents: map['amountCents'] as int,
      success: map['success'] as bool,
      isAuth: map['isAuth'] as bool,
      isCapture: map['isCapture'] as bool,
      isStandalonePayment: map['isStandalonePayment'] as bool,
      isVoided: map['isVoided'] as bool,
      isRefunded: map['isRefunded'] as bool,
      is3DSecure: map['is3DSecure'] as bool,
      integrationId: map['integrationId'] as int,
      profileId: map['profileId'] as int,
      hasParentTransaction: map['hasParentTransaction'] as bool,
      order: map['order'] as Order,
      createdAt: map['createdAt'] as DateTime,
      transactionProcessedCallbackResponses:
          map['transactionProcessedCallbackResponses'] as List<dynamic>,
      currency: map['currency'] as String,
      sourceData: map['sourceData'] as SourceData,
      apiSource: map['apiSource'] as String,
      terminalId: map['terminalId'] as dynamic,
      merchantCommission: map['merchantCommission'] as int,
      installment: map['installment'] as dynamic,
      discountDetails: map['discountDetails'] as List<dynamic>,
      isVoid: map['isVoid'] as bool,
      isRefund: map['isRefund'] as bool,
      data: map['data'] as KioskPaymentsModelData,
      isHidden: map['isHidden'] as bool,
      paymentKeyClaims: map['paymentKeyClaims'] as PaymentKeyClaims,
      errorOccured: map['errorOccured'] as bool,
      isLive: map['isLive'] as bool,
      otherEndpointReference: map['otherEndpointReference'] as dynamic,
      refundedAmountCents: map['refundedAmountCents'] as int,
      sourceId: map['sourceId'] as int,
      isCaptured: map['isCaptured'] as bool,
      capturedAmount: map['capturedAmount'] as int,
      merchantStaffTag: map['merchantStaffTag'] as dynamic,
      updatedAt: map['updatedAt'] as DateTime,
      isSettled: map['isSettled'] as bool,
      billBalanced: map['billBalanced'] as bool,
      isBill: map['isBill'] as bool,
      owner: map['owner'] as int,
      parentTransaction: map['parentTransaction'] as dynamic,
    );
  }
}

class KioskPaymentsModelData {
  String klass;
  int gatewayIntegrationPk;
  dynamic ref;
  dynamic rrn;
  dynamic amount;
  dynamic fromUser;
  String message;
  dynamic biller;
  String txnResponseCode;
  int billReference;
  dynamic aggTerminal;
  int dueAmount;
  dynamic cashoutAmount;
  String paidThrough;
  String otp;

  KioskPaymentsModelData({
    required this.klass,
    required this.gatewayIntegrationPk,
    required this.ref,
    required this.rrn,
    required this.amount,
    required this.fromUser,
    required this.message,
    required this.biller,
    required this.txnResponseCode,
    required this.billReference,
    required this.aggTerminal,
    required this.dueAmount,
    required this.cashoutAmount,
    required this.paidThrough,
    required this.otp,
  });

}

class Order {
  int id;
  DateTime createdAt;
  bool deliveryNeeded;
  Merchant merchant;
  dynamic collector;
  int amountCents;
  IngData shippingData;
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
  ExtraClass data;

  Order({
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
  });

}

class ExtraClass {
  ExtraClass();
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

class IngData {
  int? id;
  String firstName;
  String lastName;
  String street;
  String building;
  String floor;
  String apartment;
  String city;
  String state;
  String country;
  String email;
  String phoneNumber;
  String postalCode;
  String extraDescription;
  String? shippingMethod;
  int? orderId;
  int? order;

  IngData({
    this.id,
    required this.firstName,
    required this.lastName,
    required this.street,
    required this.building,
    required this.floor,
    required this.apartment,
    required this.city,
    required this.state,
    required this.country,
    required this.email,
    required this.phoneNumber,
    required this.postalCode,
    required this.extraDescription,
    this.shippingMethod,
    this.orderId,
    this.order,
  });

}

class PaymentKeyClaims {
  int userId;
  int amountCents;
  String currency;
  int integrationId;
  int orderId;
  IngData billingData;
  bool lockOrderWhenPaid;
  ExtraClass extra;
  bool singlePaymentAttempt;
  int exp;
  String pmkIp;

  PaymentKeyClaims({
    required this.userId,
    required this.amountCents,
    required this.currency,
    required this.integrationId,
    required this.orderId,
    required this.billingData,
    required this.lockOrderWhenPaid,
    required this.extra,
    required this.singlePaymentAttempt,
    required this.exp,
    required this.pmkIp,
  });

}

class SourceData {
  String type;
  String subType;
  String pan;

  SourceData({
    required this.type,
    required this.subType,
    required this.pan,
  });

}
