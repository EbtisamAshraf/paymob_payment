class WalletPayModel {
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
  WalletPayModelData data;
  bool isHidden;
  PaymentKeyClaims paymentKeyClaims;
  bool errorOccured;
  bool isLive;
  String otherEndpointReference;
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
  String redirectUrl;
  String iframeRedirectionUrl;

  WalletPayModel({
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
    required this.redirectUrl,
    required this.iframeRedirectionUrl,
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
      'redirectUrl': this.redirectUrl,
      'iframeRedirectionUrl': this.iframeRedirectionUrl,
    };
  }

  factory WalletPayModel.fromMap(Map<String, dynamic> map) {
    return WalletPayModel(
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
      data: map['data'] as WalletPayModelData,
      isHidden: map['isHidden'] as bool,
      paymentKeyClaims: map['paymentKeyClaims'] as PaymentKeyClaims,
      errorOccured: map['errorOccured'] as bool,
      isLive: map['isLive'] as bool,
      otherEndpointReference: map['otherEndpointReference'] as String,
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
      redirectUrl: map['redirectUrl'] as String,
      iframeRedirectionUrl: map['iframeRedirectionUrl'] as String,
    );
  }
}

class WalletPayModelData {
  String klass;
  int gatewayIntegrationPk;
  String orderInfo;
  int amount;
  String currency;
  String uigTxnId;
  String message;
  String mpgTxnId;
  String walletMsisdn;
  String walletIssuer;
  String txnResponseCode;
  String token;
  String redirectUrl;
  String merTxnRef;
  dynamic upgTxnId;
  int method;
  DateTime createdAt;
  String gatewaySource;
  String upgQrcodeRef;

  WalletPayModelData({
    required this.klass,
    required this.gatewayIntegrationPk,
    required this.orderInfo,
    required this.amount,
    required this.currency,
    required this.uigTxnId,
    required this.message,
    required this.mpgTxnId,
    required this.walletMsisdn,
    required this.walletIssuer,
    required this.txnResponseCode,
    required this.token,
    required this.redirectUrl,
    required this.merTxnRef,
    required this.upgTxnId,
    required this.method,
    required this.createdAt,
    required this.gatewaySource,
    required this.upgQrcodeRef,
  });

  Map<String, dynamic> toMap() {
    return {
      'klass': this.klass,
      'gatewayIntegrationPk': this.gatewayIntegrationPk,
      'orderInfo': this.orderInfo,
      'amount': this.amount,
      'currency': this.currency,
      'uigTxnId': this.uigTxnId,
      'message': this.message,
      'mpgTxnId': this.mpgTxnId,
      'walletMsisdn': this.walletMsisdn,
      'walletIssuer': this.walletIssuer,
      'txnResponseCode': this.txnResponseCode,
      'token': this.token,
      'redirectUrl': this.redirectUrl,
      'merTxnRef': this.merTxnRef,
      'upgTxnId': this.upgTxnId,
      'method': this.method,
      'createdAt': this.createdAt,
      'gatewaySource': this.gatewaySource,
      'upgQrcodeRef': this.upgQrcodeRef,
    };
  }

  factory WalletPayModelData.fromMap(Map<String, dynamic> map) {
    return WalletPayModelData(
      klass: map['klass'] as String,
      gatewayIntegrationPk: map['gatewayIntegrationPk'] as int,
      orderInfo: map['orderInfo'] as String,
      amount: map['amount'] as int,
      currency: map['currency'] as String,
      uigTxnId: map['uigTxnId'] as String,
      message: map['message'] as String,
      mpgTxnId: map['mpgTxnId'] as String,
      walletMsisdn: map['walletMsisdn'] as String,
      walletIssuer: map['walletIssuer'] as String,
      txnResponseCode: map['txnResponseCode'] as String,
      token: map['token'] as String,
      redirectUrl: map['redirectUrl'] as String,
      merTxnRef: map['merTxnRef'] as String,
      upgTxnId: map['upgTxnId'] as dynamic,
      method: map['method'] as int,
      createdAt: map['createdAt'] as DateTime,
      gatewaySource: map['gatewaySource'] as String,
      upgQrcodeRef: map['upgQrcodeRef'] as String,
    );
  }
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
    };
  }

  factory Order.fromMap(Map<String, dynamic> map) {
    return Order(
      id: map['id'] as int,
      createdAt: map['createdAt'] as DateTime,
      deliveryNeeded: map['deliveryNeeded'] as bool,
      merchant: map['merchant'] as Merchant,
      collector: map['collector'] as dynamic,
      amountCents: map['amountCents'] as int,
      shippingData: map['shippingData'] as IngData,
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
      data: map['data'] as ExtraClass,
    );
  }
}

class ExtraClass {
  ExtraClass();
}

class Merchant {
  int id;
  DateTime createdAt;
  String state;
  String country;
  String city;
  String postalCode;
  String street;

  Merchant({
    required this.id,
    required this.createdAt,
    required this.state,
    required this.country,
    required this.city,
    required this.postalCode,
    required this.street,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'createdAt': this.createdAt,
      'state': this.state,
      'country': this.country,
      'city': this.city,
      'postalCode': this.postalCode,
      'street': this.street,
    };
  }

  factory Merchant.fromMap(Map<String, dynamic> map) {
    return Merchant(
      id: map['id'] as int,
      createdAt: map['createdAt'] as DateTime,
      state: map['state'] as String,
      country: map['country'] as String,
      city: map['city'] as String,
      postalCode: map['postalCode'] as String,
      street: map['street'] as String,
    );
  }
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
  String phoneNumber;
  dynamic ownerName;
  String subType;
  String pan;

  SourceData({
    required this.type,
    required this.phoneNumber,
    required this.ownerName,
    required this.subType,
    required this.pan,
  });

}
