import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/config/routes/app_routes.dart';
import 'package:paymob_payment/config/themes/app_theme.dart';
import 'package:paymob_payment/core/utils/bloc_observer.dart';
import 'package:paymob_payment/core/injection_container.dart' as di;
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';
import 'package:sentry_flutter/sentry_flutter.dart';


Future<void> main() async {

  await runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();
    await di.init();
    await SentryFlutter.init(
          (options) {
        options.dsn = 'https://example@sentry.io/add-your-dsn-here';
      },
    );
    runApp(const MainApp());
  }, (exception, stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  });
}


class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<PaymentCubit>(),),
      ],
      child: MaterialApp(
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.mainScreenRoute,
        onGenerateRoute: RouteGenerator.getRoute,
      ),
    );
  }
}
