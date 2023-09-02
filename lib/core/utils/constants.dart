

import 'package:paymob_payment/config/routes/app_routes.dart';
import 'package:paymob_payment/core/utils/images_app.dart';
import 'package:paymob_payment/features/payment/data/models/payment_card_model.dart';



 const Map integrationIDs = {'card' : '4157142','kiosk' : '4159450','wallet': '4161062' };

List<PaymentCardModel> paymentCardList = [
  PaymentCardModel(title:  'credit Card', image: ImagesApp.creditCard, route:  Routes.cardPaymentScreen, paymentMethod: 'card',),
  PaymentCardModel(title:  'ref code', image: ImagesApp.kioskPayment, route:  Routes.kioskPaymentsScreen, paymentMethod: 'kiosk',),
  PaymentCardModel(title:  'mobile Wallet', image: ImagesApp.mobileWallets, route:  Routes.mobileWalletScreen, paymentMethod: 'wallet',),
];