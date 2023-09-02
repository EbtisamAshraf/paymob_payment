import 'package:flutter/material.dart';
import 'package:paymob_payment/core/utils/extensions.dart';
import 'package:paymob_payment/core/utils/strings_app.dart';
import 'package:paymob_payment/features/payment/ui/screens/card_payment_screen.dart';
import 'package:paymob_payment/features/payment/ui/screens/kiosk_payments_screen.dart';
import 'package:paymob_payment/features/payment/ui/screens/mobile_wallet_screen.dart';
import 'package:paymob_payment/features/payment/ui/screens/register_screen.dart';
import 'package:paymob_payment/features/payment/ui/screens/toggle_screen.dart';



class Routes {

  static const String mainScreenRoute = "/";
  static const String toggleScreenRoute = "/toggleScreen";
  static const String cardPaymentScreen = "/cardPaymentScreen";
  static const String kioskPaymentsScreen = "/kioskPaymentsScreen";
  static const String mobileWalletScreen = "/MobileWalletScreen";

}

class RouteGenerator {

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {

      case Routes.mainScreenRoute:
        return MaterialPageRoute(builder: (_) =>  RegisterScreen().responsiveText());

      case Routes.toggleScreenRoute:
        return MaterialPageRoute(builder: (_) =>  const ToggleScreen().responsiveText());

      case Routes.cardPaymentScreen:
        return MaterialPageRoute(builder: (_) =>  const CardPaymentScreen().responsiveText());

      case Routes.kioskPaymentsScreen:
        return MaterialPageRoute(builder: (_) =>  const KioskPaymentsScreen().responsiveText());

      case Routes.mobileWalletScreen:
        return MaterialPageRoute(builder: (_) =>  MobileWalletScreen().responsiveText());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(
            title: const Text(StringsApp.noRouteFound),
          ),
          body: const Center(child: Text(StringsApp.noRouteFound)),
        ));
  }
}