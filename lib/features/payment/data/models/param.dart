
class PaymentKeyParam {
  String authToken;
  String amountCents;
  int expiration;
  String orderId;
  BillingData billingData;
  String currency;
  int integrationId;
  String lockOrderWhenPaid;

  PaymentKeyParam({
    required this.authToken,
    required this.amountCents,
     this.expiration =  3600,
    required this.orderId,
    required this.billingData,
     this.currency = "EGP",
    required this.integrationId,
     this.lockOrderWhenPaid =  "false",
  });

}

class BillingData {
  String apartment;
  String email;
  String floor;
  String firstName;
  String street;
  String building;
  String phoneNumber;
  String shippingMethod;
  String postalCode;
  String city;
  String country;
  String lastName;
  String state;

  BillingData({
     this.apartment = 'NA',
    required this.email,
     this.floor = 'NA',
    required this.firstName,
     this.street = 'NA',
     this.building = 'NA',
    required this.phoneNumber,
     this.shippingMethod = 'NA',
     this.postalCode = 'NA',
     this.city = 'NA',
     this.country = 'NA',
    required this.lastName,
     this.state = 'NA',
  });

}


class OrderRegistrationParam {
  String authToken;
  String deliveryNeeded ;
  String amountCents;
  String currency;
  List items ;

  OrderRegistrationParam({
    required this.authToken,
     this.deliveryNeeded = 'false',
    required this.amountCents,
     this.currency = "EGP",
     required this.items ,
  });

}


class KioskPaymentsParam {
  Source source;
  String paymentToken;

  KioskPaymentsParam({
    required this.source,
    required this.paymentToken,
  });

}

class Source {
  String identifier;
  String subtype;

  Source({
    required this.identifier,
    required this.subtype,
  });

}

