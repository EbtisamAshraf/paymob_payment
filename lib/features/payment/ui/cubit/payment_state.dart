part of 'payment_cubit.dart';

abstract class PaymentState extends Equatable {
  const PaymentState();
  @override
  List<Object> get props => [];
}

class PaymentInitial extends PaymentState {

}

class FirstTokenLoadingState extends PaymentState {}
class FirstTokenSucceededState extends PaymentState {
  final String firstToken;

  const FirstTokenSucceededState({required this.firstToken});
}
class FirstTokenErrorState extends PaymentState {
  final String msg;

  const FirstTokenErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}


class OrderIdLoadingState extends PaymentState {}
class OrderIdSucceededState extends PaymentState {
  final String orderId;

  const OrderIdSucceededState({required this.orderId});
}
class OrderIdErrorState extends PaymentState {
  final String msg;

  const OrderIdErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}


class FinalTokenLoadingState extends PaymentState {}
class FinalTokenSucceededState extends PaymentState {
  final String finalToken;

  const FinalTokenSucceededState({required this.finalToken});
}
class FinalTokenErrorState extends PaymentState {
  final String msg;

  const FinalTokenErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}


class KioskPaymentsLoadingState extends PaymentState {}
class KioskPaymentsSucceededState extends PaymentState {
  final int kioskPaymentsModel;

  const KioskPaymentsSucceededState({required this.kioskPaymentsModel});
}
class KioskPaymentsErrorState extends PaymentState {
  final String msg;

  const KioskPaymentsErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}


class SetPriceValueState extends PaymentState {}
class InitSetPriceValueState extends PaymentState {}


class WalletPaymentsLoadingState extends PaymentState {}
class WalletPaymentsSucceededState extends PaymentState {
  final bool  success;

  const WalletPaymentsSucceededState({required this.success});
}
class WalletPaymentsErrorState extends PaymentState {
  final String msg;

  const WalletPaymentsErrorState({required this.msg});

  @override
  List<Object> get props => [msg];
}


class SetPaymentMethodCardCurrentIndex extends PaymentState {}
