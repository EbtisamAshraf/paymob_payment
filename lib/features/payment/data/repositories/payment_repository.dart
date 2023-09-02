

import 'package:dartz/dartz.dart';
import 'package:paymob_payment/core/errors/failure.dart';
import 'package:paymob_payment/core/network/network_info.dart';
import 'package:paymob_payment/core/utils/common_function.dart';
import 'package:paymob_payment/features/payment/data/data_sources/payment_remote_data_source.dart';
import 'package:paymob_payment/features/payment/data/models/param.dart';



abstract class PaymentRepository {
  Future<Either<Failure, String>> getFirstToken(String apiKey);
  Future<Either<Failure, String>> getOrderId(OrderRegistrationParam orderRegistrationParam);
  Future<Either<Failure, String>> getPaymentToken(PaymentKeyParam paymentKeyParam);
  Future<Either<Failure, int>> kioskPayments(KioskPaymentsParam kioskPaymentsParam);
  Future<Either<Failure, bool>> walletPay(KioskPaymentsParam kioskPaymentsParam);



}

class PaymentRepositoryImpl implements PaymentRepository {
  final PaymentRemoteDataSource paymentRemoteDataSource;
  final NetworkInfo networkInfo;

  PaymentRepositoryImpl(
      {required this.paymentRemoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, String>> getFirstToken(String apiKey) async{
    if (await networkInfo.isConnected) {
          try {
            final token = await paymentRemoteDataSource.getFirstToken(apiKey);
            return Right(token);
          } catch (e) {
            return Left(CommonFunctions.handleException(e));
          }
        } else {
          return Left(OffLineFailure());
        }
  }

  @override
  Future<Either<Failure, String>> getPaymentToken(PaymentKeyParam paymentKeyParam)async {
    if (await networkInfo.isConnected) {
      try {
        final token = await paymentRemoteDataSource.getPaymentToken(paymentKeyParam);
        return Right(token);
      } catch (e) {
        return Left(CommonFunctions.handleException(e));
      }
    } else {
      return Left(OffLineFailure());
    }
  }

  @override
  Future<Either<Failure, int>> kioskPayments(KioskPaymentsParam kioskPaymentsParam) async{
    if (await networkInfo.isConnected) {
      try {
        final response = await paymentRemoteDataSource.kioskPayments(kioskPaymentsParam);
        return Right(response);
      } catch (e) {
        return Left(CommonFunctions.handleException(e));
      }
    } else {
      return Left(OffLineFailure());
    }
  }

  @override
  Future<Either<Failure, String>> getOrderId(OrderRegistrationParam orderRegistrationParam)async {
    if (await networkInfo.isConnected) {
      try {
        final orderId = await paymentRemoteDataSource.getOrderId(orderRegistrationParam);
        return Right(orderId);
      } catch (e) {
        return Left(CommonFunctions.handleException(e));
      }
    } else {
      return Left(OffLineFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> walletPay(KioskPaymentsParam kioskPaymentsParam)async {
    if (await networkInfo.isConnected) {
      try {
        final response = await paymentRemoteDataSource.walletPay(kioskPaymentsParam);
        return Right(response);
      } catch (e) {
        return Left(CommonFunctions.handleException(e));
      }
    } else {
      return Left(OffLineFailure());
    }
  }

}
