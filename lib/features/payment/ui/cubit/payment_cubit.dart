import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:paymob_payment/core/errors/failure.dart';
import 'package:paymob_payment/core/utils/common_function.dart';
import 'package:paymob_payment/features/payment/data/models/param.dart';
import 'package:paymob_payment/features/payment/data/repositories/payment_repository.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {

  PaymentCubit(this.repository) : super(PaymentInitial());

  final PaymentRepository repository;

  static PaymentCubit get(context) =>  BlocProvider.of<PaymentCubit>(context);

    String paymobFirstToken = '';
    String orderId = '';
    String finalToken = '';
    String refCodeKiosk = '';

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  setPriceValue(value){
    emit(InitSetPriceValueState());
    priceController.text = value;
    emit(SetPriceValueState());
  }

  Future<void> getFirstToken(String apiKey) async{
    emit(FirstTokenLoadingState());
    Either<Failure, String> response =
    await repository.getFirstToken(apiKey);
    emit(response.fold(
          (failure) => FirstTokenErrorState(
        msg: CommonFunctions.msg(failure),
      ),
          (value) {
            paymobFirstToken = value;
            return FirstTokenSucceededState(firstToken: value);
          },
    ));

  }

  Future<void> getOrderId(OrderRegistrationParam orderRegistrationParam )async{
    emit(OrderIdLoadingState());
    Either<Failure, String> response =
    await repository.getOrderId(orderRegistrationParam);
    emit(response.fold(
          (failure) => OrderIdErrorState(
        msg: CommonFunctions.msg(failure),
      ),
          (value) {
            orderId = value;
            return OrderIdSucceededState(orderId: value);
          },
    ));

  }

  Future<void> getPaymentToken(PaymentKeyParam paymentKeyParam )async{
    emit(FinalTokenLoadingState());
    Either<Failure, String> response =
    await repository.getPaymentToken(paymentKeyParam);
    emit(response.fold(
          (failure) => FinalTokenErrorState(
        msg: CommonFunctions.msg(failure),
      ),
          (value) {
            finalToken = value ;
            return FinalTokenSucceededState(finalToken: value);
          },
    ));
  }

  Future<void> kioskPayments(KioskPaymentsParam kioskPaymentsParam)async{

    emit(KioskPaymentsLoadingState());
    Either<Failure, int> response =
    await repository.kioskPayments(kioskPaymentsParam);
    emit(response.fold(
          (failure) => KioskPaymentsErrorState(
        msg: CommonFunctions.msg(failure),
      ),
          (value) {
            refCodeKiosk = value.toString() ;
            return KioskPaymentsSucceededState(kioskPaymentsModel: value);
          },
    ));
  }


  Future<void> walletPayments(KioskPaymentsParam kioskPaymentsParam)async{

    emit(WalletPaymentsLoadingState());
    Either<Failure, bool> response =
    await repository.walletPay(kioskPaymentsParam);
    emit(response.fold(
          (failure) => WalletPaymentsErrorState(
        msg: CommonFunctions.msg(failure),
      ),
          (value) {

        return WalletPaymentsSucceededState(success: value);
      },
    ));
  }

  int index = 0;
  setPaymentMethodCardCurrentIndex(value){
    index =value;
    emit(SetPaymentMethodCardCurrentIndex());
  }
}
