import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
// import 'package:http/http.dart' as http;
import 'package:paymob_payment/core/api/api_consumer.dart';
import 'package:paymob_payment/core/api/app_interceptors.dart';
import 'package:paymob_payment/core/api/dio_consumer.dart';
import 'package:paymob_payment/core/network/network_info.dart';
import 'package:paymob_payment/features/payment/data/data_sources/payment_remote_data_source.dart';
import 'package:paymob_payment/features/payment/data/repositories/payment_repository.dart';
import 'package:paymob_payment/features/payment/ui/cubit/payment_cubit.dart';

final sl = GetIt.instance;

Future<void> init() async {


  /// ............ payment ................

  //bloc
  sl.registerFactory(
    () => PaymentCubit(sl()),
  );
  // repo
  sl.registerLazySingleton<PaymentRepository>(() => PaymentRepositoryImpl(
        paymentRemoteDataSource: sl(), networkInfo: sl(),
      ));
  // date source

  sl.registerLazySingleton<PaymentRemoteDataSource>(
      () => PaymentRemoteDataSourceImpl(apiConsumer: sl()));

  /// ............ General ................

  // core
  sl.registerLazySingleton<NetworkInfo>( () => NetworkInfoImpl(connectionChecker: sl()));

  sl.registerLazySingleton<ApiConsumer>(() => DioConsumer(dio: sl()));
  // external
  // final sharedPreferences = await SharedPreferences.getInstance();
  // sl.registerLazySingleton(() => sharedPreferences);
  // sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => InternetConnectionChecker());
  sl.registerLazySingleton(() => AppInterceptors());
  sl.registerLazySingleton(() => LogInterceptor(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
      error: true));
}
