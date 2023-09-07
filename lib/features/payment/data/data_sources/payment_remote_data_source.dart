
import 'package:flutter/material.dart';
import 'package:paymob_payment/core/api/api_consumer.dart';
import 'package:paymob_payment/core/api/end_points.dart';
import 'package:paymob_payment/features/payment/data/models/param.dart';

abstract class PaymentRemoteDataSource {
  Future<String> getFirstToken(String apiKey);
  Future<String> getOrderId(OrderRegistrationParam orderRegistrationParam);
  Future<String> getPaymentToken(PaymentKeyParam paymentKeyParam);
  Future<int> kioskPayments(KioskPaymentsParam kioskPaymentsParam);
  Future<bool> walletPay(KioskPaymentsParam kioskPaymentsParam);
}

class PaymentRemoteDataSourceImpl implements PaymentRemoteDataSource {
  ApiConsumer apiConsumer;
  PaymentRemoteDataSourceImpl({
    required this.apiConsumer,
  });

  @override
  Future<String> getFirstToken(String apiKey)async {
      final response =  await apiConsumer.post(EndPoints.authentication,body: {'api_key':apiKey });
      debugPrint('response = $response');
      String firstToken = response['token'] ;
      debugPrint('---------------------------');
      debugPrint('firstToken => $firstToken ');
      return firstToken;
  }


  @override
  Future<String> getOrderId(OrderRegistrationParam orderRegistrationParam)async {
    final response =  await apiConsumer.post(EndPoints.orderRegistration,body: {
      "auth_token":  orderRegistrationParam.authToken,
      "delivery_needed":orderRegistrationParam.deliveryNeeded,
      "amount_cents": orderRegistrationParam.amountCents,
      "currency": orderRegistrationParam.currency,
      "items": []
    });
    debugPrint('response = $response');
    String orderId = response['id'].toString();
    debugPrint('---------------------------');
    debugPrint('orderId => $orderId ');
    return orderId;
  }

  @override
  Future<String> getPaymentToken(PaymentKeyParam paymentKeyParam ,) async{
    final response =  await apiConsumer.post(EndPoints.paymentKey,body: {
      "auth_token": paymentKeyParam.authToken,
      "amount_cents": paymentKeyParam.amountCents,
      "expiration": paymentKeyParam.expiration,
      "order_id":  paymentKeyParam.orderId,
      "billing_data": {
        "apartment":  paymentKeyParam.billingData.apartment,
        "email":  paymentKeyParam.billingData.email,
        "floor":  paymentKeyParam.billingData.floor,
        "first_name":  paymentKeyParam.billingData.firstName,
        "street":  paymentKeyParam.billingData.street,
        "building":  paymentKeyParam.billingData.building,
        "phone_number":  paymentKeyParam.billingData.phoneNumber,
        "shipping_method":  paymentKeyParam.billingData.shippingMethod,
        "postal_code":  paymentKeyParam.billingData.postalCode,
        "city":  paymentKeyParam.billingData.city,
        "country":  paymentKeyParam.billingData.country,
        "last_name":  paymentKeyParam.billingData.lastName,
        "state": paymentKeyParam.billingData.state
      },
      "currency": paymentKeyParam.currency,
      "integration_id": paymentKeyParam.integrationId,
      "lock_order_when_paid": paymentKeyParam.lockOrderWhenPaid
    });
    debugPrint('response = $response');
    String finalToken = response['token'];
    debugPrint('---------------------------');
    debugPrint('finalToken => $finalToken ');
    return finalToken;
  }


  @override
  Future<int> kioskPayments(KioskPaymentsParam kioskPaymentsParam) async{
    final response =  await apiConsumer.post(EndPoints.kioskPayments,body: {
      "source": {
        "identifier": kioskPaymentsParam.source.identifier,
        "subtype":  kioskPaymentsParam.source.subtype
      },
      "payment_token": kioskPaymentsParam.paymentToken
    });
    debugPrint('response = $response');
     int billReference =response['id'];
    debugPrint('---------------------------');
    debugPrint('billReference => $billReference ');
    return billReference;
  }

  @override
  Future<bool> walletPay(KioskPaymentsParam kioskPaymentsParam) async{
    final response =  await apiConsumer.post(EndPoints.mobileWallets,body: {
      "source": {
        "identifier": kioskPaymentsParam.source.identifier,
        "subtype":  kioskPaymentsParam.source.subtype
      },
      "payment_token": kioskPaymentsParam.paymentToken
    });
    debugPrint('response = $response');

    bool pending =response['pending'];
    bool success =response['success'];

    debugPrint('---------------------------');
    debugPrint('pending => $pending ');
    debugPrint('success => $success ');
    return success;
  }

}
